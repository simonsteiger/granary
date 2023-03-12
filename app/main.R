box::use(
  shiny[bootstrapPage, moduleServer, reactive, NS, tags, div, icon, HTML],
  bslib[bs_theme, navs_tab_card, nav, sidebar, card_body_fill, accordion, accordion_panel],
  thematic[thematic_on, thematic_shiny, font_spec],
  emo,
)

box::use(
  app/view/title,
  app/view/filter,
  app/view/recipe,
  app/view/instruction,
  app/logic/data,
  app/logic/theme[theme],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bootstrapPage(
    theme = theme,
    div(
      class = "components-container",
      title$ui(ns("title")),
      navs_tab_card(
        height = 500,
        full_screen = TRUE,
        wrapper = card_body_fill,
        nav("Filter", filter$ui(ns("formula"), data$data)),
        nav("Recipe", recipe$ui(ns("present"))),
        nav("Instruction", instruction$ui(ns("present")))
      )
    )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    prefiltered <- title$server("title", reactive(data$data))
    chosen <- filter$server("formula", prefiltered)
    recipe$server("present", chosen)
    instruction$server("present", chosen)
  })
}
