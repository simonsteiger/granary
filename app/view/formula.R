# app/view/formula

box::use(
  shiny[moduleServer, NS, reactive, tagList, numericInput],
  shinyWidgets[pickerInput],
  reactable[reactable, renderReactable, reactableOutput],
)

box::use(
  app/logic/resize[resize]
)

#' @export
ui <- function(id, data) {
  ns <- NS(id)
  
  tagList(
    pickerInput(
      inputId = ns("formula"),
      label = "Select formula",
      choices = unique(data$name)
    ),
    numericInput(
      inputId = ns("multiplier"), 
      label = "Enter total quantity in grams", value = 1000
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