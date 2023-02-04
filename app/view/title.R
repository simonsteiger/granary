
box::use(
  shiny[NS, div, reactive, is.reactive, tagList, tags, icon, moduleServer],
  bslib[layout_column_wrap],
  shinyWidgets[checkboxGroupButtons],
  dplyr[filter, mutate],
  stringr[str_detect],
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
      reactive({
        if (is.null(input$type)) {
          data() |> 
            mutate(name = NA)
        } else {
          data() |> 
            filter(str_detect(type, paste0(input$type, collapse = "|")))  
        }
      })
    }
  )
}