box::use(
  shiny[moduleServer, NS, reactive, is.reactive, renderUI, htmlOutput, HTML, tags, tagList],
  bslib[card, card_header, card_body_fill],
  purrr[map],
)

box::use(
  app / logic / transcribe[transcribe],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  tagList(
    htmlOutput(ns("recipe"))
  )
}

#' @export
server <- function(id, data) {
  moduleServer(id, function(input, output, session) {
    stopifnot(is.reactive(data))
    transcribed <- reactive({
      data() |>
        transcribe()
    })
    out <- reactive(
      HTML(
        transcribed()
      )
    )
    output$recipe <- renderUI({
      out()
    })
  })
}
