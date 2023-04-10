
box::use(
  sh = shiny,
  shw = shinyWidgets,
  bsl = bslib,
  bsi = bsicons,
  pr = purrr,
  dp = dplyr,
)

#' @export
pick_formula <- function(id, choices) { # unique(data$name)
  shw$pickerInput(
    inputId = id,
    label = "Pick formula",
    choices = choices,
    options = list(
      `live-search` = TRUE,
      `live-search-normalize` = TRUE
    )
  ) 
}

#' @export
toggle_resizeby <- function(id_main, id_cond) { 
  sh$tagList(
    shw$prettyRadioButtons(
      inputId = id_main,
      label = "Resize by",
      status = "primary",
      shape = "round",
      animation = "smooth",
      outline = TRUE,
      choices = c("total", "ingredient")
    ),
    sh$conditionalPanel(
      condition = paste0('input[\'', id_main, "\'] == \'ingredient\'"),
      shw$pickerInput(
        inputId = id_cond,
        label = "Pick ingredient",
        choices = NULL,
        options = list(
          `live-search` = TRUE,
          `live-search-normalize` = TRUE
        )
      )
    ) 
  )
}

#' @export
numeric_multiplier <- function(id) {
  sh$numericInput(
    inputId = id,
    label = "Enter quantity in grams", 
    value = 1000
  )  
}

#' @export
box_overview <- function(row) {
  type <- switch(row$type,
                 "sourdough" = bsi$bs_icon("bug"),
                 "yeast" = bsi$bs_icon("box"),
                 "misc" = bsi$bs_icon("lightbulb"),
                 stop("Unknown type")
                 )
  
  bsl$value_box(
    title = row$type,
    value = row$name,
    showcase = type,
    showcase_layout = bsl$showcase_top_right(),
    theme_color = "secondary",
    sh$p("by Jeffrey Hamelman"),
  )
}

#' @export
box_map <- function(data) {
  recipe_data <- dp$distinct(data, name, type)
  
  pr$map(
    seq_len(nrow(recipe_data)),
    ~ box_overview(recipe_data[.x, ])
  )
}
