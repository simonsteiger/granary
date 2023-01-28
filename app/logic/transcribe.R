# app/logic/transcribe

box::use(
  dplyr[filter, select, summarise],
  glue[glue]
)

transcribe <- function(data) {
  data |> 
    summarise(
      glued := glue("{stage}: {weight}g {ingredient}")
    )
}
