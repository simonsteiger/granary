box::use(
  shiny[bootstrapPage, moduleServer, reactive, NS, tags, div],
  bslib[bs_theme, layout_column_wrap],
  thematic[thematic_on, thematic_shiny, font_spec]
)

box::use(
  app/view/title,
  app/view/formula,
  app/view/present,
  app/logic/cookbook[cookbook],
  app/logic/theme[theme]
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bootstrapPage(
    theme = theme,
    div(
      class = "components-container", 
      title$ui(ns("title")),
      layout_column_wrap(
        width = 1/2, 
        height = "auto",
        formula$ui(ns("formula"), cookbook),
        present$ui(ns("present"), cookbook) 
      )
    )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    chosen <- formula$server("formula", cookbook)
    present$server("present", chosen)
  })
}
