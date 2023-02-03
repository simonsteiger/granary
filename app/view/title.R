
box::use(
  shiny[NS, div, tagList, tags, icon, moduleServer, is.reactive],
  bslib[layout_column_wrap],
  shinyWidgets[checkboxGroupButtons]
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
        width = "100%",
        height = "auto",
        class = "button-menu",
        checkboxGroupButtons(
          inputId = ns("type"),
          label = NULL, 
          choices = c(`<i class='fa fa-bacterium'></i>` = "sourdough", 
                      `<i class='fa fa-cube'></i>` = "yeast", 
                      `<i class='fa fa-cookie-bite'></i>` = "pastry"),
          selected = c("sourdough", "yeast", "pastry"),
          justified = TRUE,
          individual = TRUE,
        )
      )
    ) 
  )
}

#' @export
server <- function(id, data) {
  moduleServer(
    id,
    function(input, output, session) {
      stopifnot(is.reactive(data))
      data |> 
        filter(type_sourdough == TRUE )
    }
  )
}