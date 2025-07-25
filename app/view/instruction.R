box::use(
  sh = shiny,
  bsl = bslib,
)

# could eventually each category in accordions?
# requires partitioning steps so they can be put into accordion?
# hope to do this programmatically

#' @export
ui <- function(id) {
  ns <- sh$NS(id)
  bsl$card(
    class = "m-8",
    bsl$card_header(class = "bg-info", "Instruction"), 
    bsl$card_body_fill(sh$htmlOutput(ns("instruction"), width = "100%"))
  )
}

#' @export
server <- function(id, data) {
  sh$moduleServer(
    id,
    function(input, output, session) {
      stopifnot(sh$is.reactive(data))
      
      res <- sh$reactive({
        if (nrow(data()) > 0) {
          data()$text[[1]]
        } else {
          "Trying to bake void?"
        }  
      })
      
      output$instruction <- sh$renderUI({
        sh$HTML(res())
      })
      
    }
  )
}
