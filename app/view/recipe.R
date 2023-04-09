box::use(
  magrittr[`%>%`],
  sh = shiny,
  bsl = bslib,
)

box::use(
  fn_sv = app/logic/fn_server,
)

#' @export
ui <- function(id) {
  ns <- sh$NS(id)
  bsl$card(
    class = "m-8",
    bsl$card_header(class = "bg-info", "Recipe"), 
    bsl$card_body_fill(sh$htmlOutput(ns("recipe"), width = "100%"))
  )
}

#' @export
server <- function(id, data) {
  sh$moduleServer(id, function(input, output, session) {
    stopifnot(sh$is.reactive(data))
    transcribed <- sh$reactive({
      data() %>%
        fn_sv$transcribe()
    })
    out <- sh$reactive(
      sh$HTML(
        transcribed()
      )
    )
    output$recipe <- sh$renderUI({
      out()
    })
  })
}
