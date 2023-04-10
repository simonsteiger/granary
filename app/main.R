box::use(
  magrittr[`%>%`],
  sass,
  sh = shiny,
  bsl = bslib,
)

box::use(
  app/view/title,
  app/view/filter,
  app/view/recipe,
  app/view/instruction,
  # app/view/overview,
  app/logic/data,
  app/logic/theme,
  app/logic/fn_ui,
)

#' @export
ui <- function(id) {
  ns <- sh$NS(id)
  sh$tags$head(sh$includeHTML(("app/static/google-analytics.html")))
  bsl$page_navbar(
    window_title = "granary",
    theme = theme$light %>% 
      bsl$bs_add_rules(sass$sass_file("app/styles/recipe.scss")),
    bg = "#fff",
    position = "fixed-top",
    fluid = FALSE,
    bsl$nav_spacer(),
    bsl$nav(
      title = "Resize",
      bsl$layout_column_wrap(
        class = "p-2 justify-content-center",
        width = "16rem",
        gap = "1rem",
        fill = FALSE,
        fixed_width = TRUE,
        filter$ui(ns("formula"), data$data),
        recipe$ui(ns("present"))
      ),
      bsl$layout_column_wrap(
        class = "p-2 justify-content-center",
        width = "33rem",
        fixed_width = TRUE,
        instruction$ui(ns("present"))  
      )
    ),
    bsl$nav_item(sh$tags$a(sh$tags$img(src = "static/granary.png", height = "100px"))),
    bsl$nav(
      title = "Overview",
      sh$h2(class = "d-flex justify-content-center", "Work in progess"),
      bsl$layout_column_wrap(
        width = "300px",
        # fixed_width = TRUE,
        !!!fn_ui$box_map(data$data)
      )
    ),
    bsl$nav_spacer()
  )
}

#' @export
server <- function(id) {
  sh$moduleServer(id, function(input, output, session) {
    chosen <- filter$server("formula", sh$reactive(data$data))
    
    recipe$server("present", chosen)
    
    instruction$server("present", chosen)
  })
}
