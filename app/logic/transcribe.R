
box::use(
  shiny[tags],
  dplyr[filter, select, group_by, summarise, mutate, pull],
  glue[glue],
)

transcribe <- function(data) {
  data |>
    summarise(
      glued := glue("<li>{weight}g {ingredient}</li>"),
      stage = stage,
    ) |>
    group_by(stage) |>
    summarise(
      collapsed = paste0(glued, collapse = "")
    ) |> 
    mutate(
      res := glue("<p><b>{stage}</b></ul>{collapsed}</ul></p>")
    ) |>
    pull(res)
}
