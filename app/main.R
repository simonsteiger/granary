box::use(
  shiny[bootstrapPage, moduleServer, reactive, NS, tags, div, icon],
  bslib[bs_theme, navs_tab_card, nav, sidebar, card_body_fill, accordion, accordion_panel],
  thematic[thematic_on, thematic_shiny, font_spec],
  emo,
)

box::use(
  app/view/title,
  app/view/formula,
  app/view/present,
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
        nav("Filter", formula$ui(ns("formula"), data$recipes)),
        nav("Recipe", present$ui(ns("present"), data$recipes)),
        nav("Instruction", "You have to be creative for now... ", emo$ji("rainbow"))
      )
    )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    prefiltered <- title$server("title", reactive(data$recipes))
    chosen <- formula$server("formula", prefiltered)
    present$server("present", chosen)
  })
}
