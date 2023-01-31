
box::use(
  dplyr[filter, select, mutate, if_else]
)

resize <- function(data, formula, multiplier) {
  data |>
    filter(name == formula) |>
    select(stage, ingredient, weight) |>
    mutate(
      weight = if_else(
        ingredient %in% c("yeast", "salt"),
        round(
          weight / sum(weight) * as.numeric(multiplier),
          digits = 2
        ),
        round(
          weight / sum(weight) * as.numeric(multiplier),
          digits = 0
        )
      )
    )
}
