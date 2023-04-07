
box::use(
  shiny,
  shinyWidgets[pickerInput, updatePickerInput, prettyRadioButtons],
  reactable[reactable, renderReactable, reactableOutput],
  bslib[card, card_header, card_body_fill],
  shinyjs[disable],
)

#' @export
pick_formula <- function(id, choices) { # unique(data$name)
  pickerInput(
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
  shiny$tagList(
    prettyRadioButtons(
      inputId = id_main,
      label = "Resize by",
      status = "primary",
      shape = "round",
      animation = "smooth",
      outline = TRUE,
      choices = c("total", "ingredient")
    ),
    shiny$conditionalPanel(
      condition = paste0('input[\'', id_main, "\'] == \'ingredient\'"),
      pickerInput(
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
  shiny$numericInput(
    inputId = id,
    label = "Enter quantity in grams", 
    value = 1000
  )  
}

