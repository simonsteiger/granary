box::use(
  shiny[bootstrapPage, moduleServer, reactive, NS, tags],
  bslib[bs_theme],
  thematic[thematic_on, thematic_shiny, font_spec]
)

box::use(
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
    formula$ui(ns("formula"), cookbook),
    present$ui(ns("present"), cookbook)
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    chosen <- formula$server("formula", cookbook)
    present$server("present", chosen)
  })
}
