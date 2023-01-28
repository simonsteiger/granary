box::use(
  shiny[bootstrapPage, moduleServer, NS, renderText, tags, textOutput],
)

box::use(
  app/view/formula,
  app/logic/cookbook[cookbook],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bootstrapPage(
    formula$ui(ns("formula"), cookbook)
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
      
    formula$server("formula", cookbook)
  })
}
