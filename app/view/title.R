
box::use(
  shiny[NS, div, tagList, tags, icon, moduleServer]
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  div(
    class = "header",
    tags$h1("Recipe resize"),
    icon("r-project")
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