box::use(
  shiny[bootstrapPage, moduleServer, reactive, NS, tags, div, icon, HTML, img],
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
  app/logic/theme[theme],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bootstrapPage(
    theme = theme,
    div(
      class = "components-container",
      div(
        class = "mt-4 d-flex justify-content-center",
        img(src = "static/granary.png", width = "20%")
      ),
      bsl$layout_column_wrap(
        width = 1/2,
        fill = FALSE,
        bsl$layout_column_wrap(
          width = 1,
          heights_equal = "row",
          bsl$card(
            bsl$card_header(class = "bg-info", "Filter"), 
            bsl$card_body(filter$ui(ns("formula"), data$data))
          ),
          bsl$card(
            bsl$card_header(class = "bg-info", "Recipe"), 
            bsl$card_body(recipe$ui(ns("present")))
          )
        ),
        bsl$card(
          bsl$card_header(class = "bg-info", "Instruction"), 
          bsl$card_body(instruction$ui(ns("present")))
        )
      )
    )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # prefiltered <- title$server("title", reactive(data$data))
    chosen <- filter$server("formula", reactive(data$data)) # otherwise pass prefiltered here
    recipe$server("present", chosen)
    instruction$server("present", chosen)
  })
}
