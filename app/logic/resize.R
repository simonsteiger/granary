
box::use(
  dplyr[filter, select, mutate, if_else, case_when]
)

resize <- function(data, formula, multiplier) {
  data |>
    filter(name == formula) |>
    select(stage, ingredient, weight) |>
    mutate(
      weight = weight / sum(weight) * as.numeric(multiplier),
      weight = case_when(
        weight < .05 ~ round(weight, 2),
        weight < 5 ~ round(weight, 1),
        TRUE ~ round(weight, 0)
      )
    )
}
