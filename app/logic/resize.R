box::use(
  dplyr
)

resize <- function(.data, formula, multiplier, .ingredient = NULL, .by) {
  selected <-
    .data |>
    dplyr$filter(name == formula)

  if (.by == "total") {
    selected |>
      dplyr$mutate(
        weight = weight / sum(weight) * as.numeric(multiplier),
        weight = dplyr$case_when(
          weight < 1 ~ round(weight, 2),
          weight < 5 ~ round(weight, 1),
          TRUE ~ round(weight, 0)
        )
      )
  } else {
    grouped <- selected |>
      dplyr$group_by(ingredient) |>
      dplyr$summarise(
        weight = sum(weight)
      )
    ratio <- multiplier / grouped$weight[grouped$ingredient == .ingredient]
    selected |>
      dplyr$mutate(
        weight = weight * ratio,
        weight = dplyr$case_when(
          weight < 1 ~ round(weight, 2),
          weight < 5 ~ round(weight, 1),
          TRUE ~ round(weight, 0)
        )
      )
  }
}
