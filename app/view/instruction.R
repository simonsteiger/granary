
box::use(
  shiny[tagList, NS, moduleServer, reactive, is.reactive, htmlOutput, renderUI, HTML]
)

box::use(
  
)

# could eventually each category in accordions?
# requires partitioning steps so they can be put into accordion?
# hope to do this programmatically

#' @export
ui <- function(id) {
  ns <- NS(id)
  tagList(
    htmlOutput(ns("instruction"))
  )
}

#' @export
server <- function(id, data) {
  moduleServer(
    id,
    function(input, output, session) {
      stopifnot(is.reactive(data))
      
      res <- reactive({
        if (nrow(data()) > 0) {
          data()$text[[1]]
        } else {
          "Trying to bake void?"
        }  
      })
      
      output$instruction <- renderUI({
        HTML(res())
      })
      
    }
  )
}
