
box::use(
  magrittr[`%>%`],
  sh = shiny,
  shw = shinyWidgets,
  bsl = bslib,
  bsi = bsicons,
  pr = purrr,
  dp = dplyr,
  str = stringr,
)

list2atom <- function(x) {
  unlist(paste0(x, collapse = ";"))
}

#' @export
grouped_choices <- function(data) {
  unique_recipes <- dp$distinct(data, name, tags) %>% 
    dp$rowwise() %>% 
    dp$mutate(
      tags = list2atom(tags)
  )
  
  rye <- unique_recipes %>% 
    dp$filter(str$str_detect(list2atom(tags), "sourdough")) %>% 
    dp$pull(name)
  
  wheat <- unique_recipes %>% 
    dp$filter(str$str_detect(list2atom(tags), "levain")) %>% 
    dp$pull(name)
  
  yeast <- unique_recipes %>% 
    dp$filter(str$str_detect(list2atom(tags), "yeast|poolish|biga")) %>% 
    dp$pull(name)
  
  list(
    Yeast = yeast,
    Levain = wheat,
    Sourdough = rye
    )
}

#' @export
pick_formula <- function(id, data) {
  shw$pickerInput(
    inputId = id,
    label = "Pick formula",
    choices = grouped_choices(data),
    options = list(
      size = 4,
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

box_overview <- function(row) {
  tags <- switch(row$tags,
                 "sourdough" = bsi$bs_icon("bookmark"),
                 "yeast" = bsi$bs_icon("bookmark"),
                 "misc" = bsi$bs_icon("bookmark"),
                 stop("Unknown tags")
                 )
  
  bsl$value_box(
    title = row$tags,
    value = row$name,
    showcase = tags,
    showcase_layout = bsl$showcase_top_right(),
    theme_color = "secondary",
    sh$p("by Jeffrey Hamelman"),
  )
}

#' @export
box_map <- function(data) {
  recipe_data <- dp$distinct(data, name, tags)
  
  pr$map(
    seq_len(nrow(recipe_data)),
    ~ box_recipe(recipe_data[.x, ])
  )
}

#' @export
box_recipe <- function(data) {
  sh$div(
    class = "recipe",
    sh$h3(class = "name", data$name),
    sh$div(
      class = "d-flex flex-wrap",
      pr$map(
        pr$list_flatten(data$tags),
        ~ sh$div(class = "tags", .x)
        )
      )
  )
}
