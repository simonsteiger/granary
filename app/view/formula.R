
box::use(
  shiny[moduleServer, NS, reactive, tagList, numericInput, icon],
  shinyWidgets[pickerInput],
  reactable[reactable, renderReactable, reactableOutput],
  bslib[card, card_header, card_body]
)

box::use(
  app/logic/resize[resize]
)

#' @export
ui <- function(id, data) {
  ns <- NS(id)
  card(
    class = "component-box",
    full_screen = TRUE,
    card_header(
      class = "bg-dark",
      "Choice menu"
      ),
    card_body(
      tagList(
        pickerInput(
          inputId = ns("formula"),
          label = "Select formula",
          choices = unique(data$name),
          options = list(
            `live-search` = TRUE,
            `live-search-normalize` = TRUE
            )
        ),
        numericInput(
          inputId = ns("multiplier"),
          label = "Enter total quantity in grams", value = 1000
        )
      )   
    )
  )
}

#' @export
server <- function(id, data) {
  moduleServer(id, function(input, output, session) {
    reactive({
      resize(data, input$formula, input$multiplier)
    })
  })
}
