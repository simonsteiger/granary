# app/logic/resize

box::use(
  dplyr[filter, select, mutate]
)

resize <- function(data, formula, multiplier) {
  data |> 
    filter(name == formula) |> 
    select(stage, ingredient, weight) |> 
    mutate(weight = round(
      weight / sum(weight) * as.numeric(multiplier),
      digits = 2
      )
    )
}