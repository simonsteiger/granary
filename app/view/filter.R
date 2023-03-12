
box::use(
  shiny,
  shinyWidgets[pickerInput, updatePickerInput, prettyRadioButtons],
  reactable[reactable, renderReactable, reactableOutput],
  bslib[accordion, accordion_panel],
  bsicons[bs_icon],
  shinyjs[disable],
)

box::use(
  app/logic/resize[resize],
  app/logic/ui_filter[pick_formula, toggle_resizeby, numeric_multiplier],
)

#' @export
ui <- function(id, data) {
  ns <- shiny$NS(id)
  shiny$tagList(
    pick_formula(ns("formula"), unique(data$name)),
    toggle_resizeby(ns("toggle"), ns("ingredient")),
    numeric_multiplier(ns("multiplier"))
  )
}

#' @export
server <- function(id, data) {
  shiny$moduleServer(id, function(input, output, session) {
    stopifnot(shiny$is.reactive(data))
    
    shiny$observe({
      updatePickerInput(session, "formula", choices = unique(data()$name))
    })
    
    shiny$observe({
      updatePickerInput(
        session,
        "ingredient",
        choices = unique(data()$ingredient[data()$name == input$formula]))
    })
    
    shiny$reactive({
      resize(
        data(),
        formula = input$formula,
        multiplier = input$multiplier,
        .ingredient = input$ingredient,
        .by = input$toggle
      )
    })
  })
}
