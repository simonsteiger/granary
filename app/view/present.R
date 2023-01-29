
box::use(
  shiny[moduleServer, NS, reactive, is.reactive, renderUI, htmlOutput, HTML, tags],
  bslib[card, card_header, card_body],
  dplyr[pull],
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
    glued <- reactive({
      data() |>
        transcribe() |>
        pull(glued)
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
            as.character(
              tags$ul(
                map(glued(), ~tags$li(.x))
              )
            )
          )
        )
      )
    )
    output$card <- renderUI({
      out()
    })
  })
}
