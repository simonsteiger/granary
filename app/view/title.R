
box::use(
  shiny[NS, div, tagList, tags, icon, moduleServer],
  bslib[layout_column_wrap],
)

box::use(
  app/logic/toggleButton[toggleButton],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  tagList(
    div(
      class = "header",
      icon("r-project"),
      tags$h1("ecipe resizer")
    ),
    div(
      layout_column_wrap(
        width = 1/3,
        height = "auto",
        class = "button-menu",
        toggleButton("sourdough", icon("bacterium")),
        toggleButton("yeast", icon("cube")),
        toggleButton("sweet", icon("cookie-bite"))
      )
    ) 
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