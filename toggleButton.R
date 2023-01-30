
box::use(
  shinyWidgets[prettyToggle]
)

toggleButton <- function(id, icon) {
  prettyToggle(
    inputId = id,
    label_on = "",
    label_off = "",
    icon_on = icon,
    icon_off = icon,
    status_on = "success",
    status_off = "default",
    shape = "round"
  )
}