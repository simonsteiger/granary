box::use(
  sh = shiny,
  pr = purrr,
  dp = dplyr,
)

box::use(
  app/logic/data,
  fn_ui = app/logic/fn_ui,
)

# ui <- function(id) {
#   ns <- sh$NS(id)
#   fn_ui$box_map(data$data)
# }

# server <- function(id) {
#   sh$moduleServer(
#     id,
#     function(input, output, session) {
#       recipe_data <- dp$distinct(data$data, name, type)
#       
#       boxes <- 
#         pr$map(
#         seq_len(nrow(recipe_data)),
#         ~ fn_ui$box_overview(recipe_data[.x, ])
#         )
#       
#       output$boxes <- sh$renderUI({
#         boxes
#       })
#     }
#   )
# }
