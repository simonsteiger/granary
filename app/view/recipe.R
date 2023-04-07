box::use(
  shiny[moduleServer, NS, reactive, is.reactive, renderUI, htmlOutput, HTML, tags, tagList],
  bsl = bslib,
  purrr[map],
)

box::use(
  app / logic / transcribe[transcribe],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bsl$card(
    class = "m-8",
    bsl$card_header(class = "bg-info", "Recipe"), 
    bsl$card_body_fill(htmlOutput(ns("recipe"), width = "100%"))
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
