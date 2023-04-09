box::use(
  magrittr[`%>%`],
  dp = dplyr,
  glu = glue,
)

#' @export
resize <- function(.data, formula, multiplier, .ingredient = NULL, .by) {
  selected <-
    .data %>%
    dp$filter(name == formula)

  if (.by == "total") {
    selected %>%
      dp$mutate(
        weight = weight / sum(weight) * as.numeric(multiplier),
        weight = dp$case_when(
          weight < 1 ~ round(weight, 2),
          weight < 5 ~ round(weight, 1),
          TRUE ~ round(weight, 0)
        )
      )
  } else {
    grouped <- selected %>%
      dp$group_by(ingredient) %>%
      dp$summarise(
        weight = sum(weight)
      )
    ratio <- multiplier / grouped$weight[grouped$ingredient == .ingredient]
    selected %>%
      dp$mutate(
        weight = weight * ratio,
        weight = dp$case_when(
          weight < 1 ~ round(weight, 2),
          weight < 5 ~ round(weight, 1),
          TRUE ~ round(weight, 0)
        )
      )
  }
}

#' @export
transcribe <- function(data) {
  data %>%
    dp$summarise(
      glued := glu$glue("<li>{weight}g {ingredient}</li>"),
      stage = stage,
    ) %>%
    dp$group_by(stage) %>%
    dp$summarise(
      collapsed = paste0(glued, collapse = "")
    ) %>% 
    dp$mutate(
      res := glu$glue("<h6>{stage}</h6></ul>{collapsed}</ul></br>")
    ) %>%
    dp$pull(res)
}

