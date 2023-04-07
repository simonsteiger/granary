box::use(
  shiny[bootstrapPage, navbarPage, moduleServer, reactive, NS, tags, div, icon, HTML, includeHTML],
  bsl = bslib,
  thematic[thematic_on, thematic_shiny, font_spec],
  emo,
)

box::use(
  app/view/title,
  app/view/filter,
  app/view/recipe,
  app/view/instruction,
  app/logic/data,
  app/logic/theme,
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  tags$head(includeHTML(("app/static/google-analytics.html")))
  bsl$page_navbar(
    window_title = "granary",
    theme = theme$light,
    bg = "#fff",
    position = "fixed-top",
    fluid = FALSE,
    collapsible = FALSE,
    bsl$nav_spacer(),
    bsl$nav(
      title = "Resize",
      bsl$layout_column_wrap(
        class = "p-2",
        width = 1/2,
        gap = "1rem",
        fill = FALSE,
        filter$ui(ns("formula"), data$data),
        recipe$ui(ns("present"))
      ),
      bsl$layout_column_wrap(
        class = "p-2",
        width = 1,
        instruction$ui(ns("present"))  
      )
    ),
    bsl$nav_item(tags$a(tags$img(src = "static/granary.png", height = "100px"))),
    bsl$nav(
      title = "Overview"
    ),
    bsl$nav_spacer()
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
    chosen <- filter$server("formula", reactive(data$data))
    
    recipe$server("present", chosen)
    
    instruction$server("present", chosen)
  })
}
