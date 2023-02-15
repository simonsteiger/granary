
box::use(
  shiny,
  shinyWidgets[pickerInput, updatePickerInput, prettyRadioButtons],
  reactable[reactable, renderReactable, reactableOutput],
  bslib[card, card_header, card_body_fill],
  shinyjs[disable],
)

box::use(
  app/logic/resize[resize]
)

#' @export
ui <- function(id, data) {
  ns <- shiny$NS(id)
  card(
    class = "component-box",
    full_screen = TRUE,
    card_header(
      class = "bg-dark",
      "Choice menu"
      ),
    card_body_fill(
      shiny$tagList(
        pickerInput(
          inputId = ns("formula"),
          label = "Pick formula",
          choices = unique(data$name),
          options = list(
            `live-search` = TRUE,
            `live-search-normalize` = TRUE
          )
        ),
        prettyRadioButtons(
          inputId = ns("toggle"),
          label = "Resize by",
          status = "primary",
          shape = "curve",
          animation = "smooth",
          plain = TRUE,
          outline = FALSE,
          icon = shiny$icon("square-check"),
          choices = c("total", "ingredient")
        ),
        shiny$conditionalPanel(
          condition = paste0('input[\'', ns('toggle'), "\'] == \'ingredient\'"),
          pickerInput(
            inputId = ns("ingredient"),
            label = "Pick ingredient",
            choices = unique(data$ingredient),
            options = list(
              `live-search` = TRUE,
              `live-search-normalize` = TRUE
            )
          )
        ),
        shiny$numericInput(
          inputId = ns("multiplier"),
          label = "Enter quantity in grams", 
          value = 1000
        )
      )
    )
  )
}

#' @export
server <- function(id, data) {
  shiny$moduleServer(id, function(input, output, session) {
    stopifnot(shiny$is.reactive(data))
    shiny$observe({
      updatePickerInput(session, "formula", choices = unique(data()$name))
    })
    shiny$reactive({
      resize(data(), input$formula, input$multiplier)
    })
  })
}
