
box::use(
  sh = shiny,
  shw = shinyWidgets,
  bsl = bslib,
)

box::use(
  fn_sv = app/logic/fn_server,
  fn_ui = app/logic/fn_ui,
)

#' @export
ui <- function(id, data) {
  ns <- sh$NS(id)
  bsl$card(
    class = "m-8",
    bsl$card_header(class = "bg-info", "Filter"), 
    bsl$card_body_fill(
      fn_ui$pick_formula(ns("formula"), data),
      fn_ui$toggle_resizeby(ns("toggle"), ns("ingredient")),
      fn_ui$numeric_multiplier(ns("multiplier"))
    )
  )
}

#' @export
server <- function(id, data) {
  sh$moduleServer(id, function(input, output, session) {
    stopifnot(sh$is.reactive(data))
    
    # sh$observe({
    #   shw$updatePickerInput(session, "formula", choices = unique(data()$name))
    # })
    
    sh$observe({
      shw$updatePickerInput(
        session,
        "ingredient",
        choices = unique(data()$ingredient[data()$name == input$formula]))
    })
    
    sh$reactive({
      fn_sv$resize(
        data(),
        formula = input$formula,
        multiplier = input$multiplier,
        .ingredient = input$ingredient,
        .by = input$toggle
      )
    })
  })
}
