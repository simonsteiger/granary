
box::use(
  shiny[NS, div, tagList, tags, icon, moduleServer]
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  div(
    class = "header",
    icon("r-project"),
    tags$h1("ecipe resizer")
  )
}

#' @export
server <- function(id) {
  moduleServer(
    id,
    function(input, output, session) {
      
    }
  )
}