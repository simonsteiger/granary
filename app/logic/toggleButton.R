
box::use(
  shiny[NS],
  shinyWidgets[prettyToggle]
)

#' @export
toggleButton <- function(id, icon) {
  ns <- NS(id)
  prettyToggle(
    inputId = ns(id),
    value = TRUE,
    label_on = "",
    label_off = "",
    icon_on = icon,
    icon_off = icon,
    status_on = "primary",
    status_off = "default",
    shape = "round",
    plain = TRUE,
    outline = TRUE
  )
}
