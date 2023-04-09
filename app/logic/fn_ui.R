
box::use(
  sh = shiny,
  shw = shinyWidgets,
  reactable[reactable, renderReactable, reactableOutput],
  bslib[card, card_header, card_body_fill],
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
        choices = NULL, # need updateUI with unique(cur_data$ingredient)
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

