
box::use(
  shiny[moduleServer, NS, reactive, is.reactive, renderUI, htmlOutput, HTML, tags],
  bslib[card, card_header, card_body],
  purrr[map],
)

box::use(
  app/logic/transcribe[transcribe],
)

#' @export
ui <- function(id, data) {
  ns <- NS(id)
  htmlOutput(ns("card"))
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
      card(
        class = "component-box",
        full_screen = TRUE,
        card_header(
          class = "bg-dark",
          "Formula"
          ),
        card_body(
          height = 200,
          HTML(
            transcribed()
          )
        )
      )
    )
    output$card <- renderUI({
      out()
    })
  })
}
