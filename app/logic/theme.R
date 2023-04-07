
box::use(
  bslib[bs_theme, font_google],
)

#' @export
light <- bs_theme(
  version = 5,
  bg = "#ffffff",
  fg = "#565b85",
  primary = "#E0A969",
  secondary = "#e8e9f3",
  success = "#E0A969",
  info = "#e8e9f3",
  warning = "#c26130",
  danger = "#FF00E3",
  base_font = font_google("Fira Sans"),
  heading_font = font_google("Fira Sans"),
  code_font = font_google("Fira Sans")
)

#' @export
dark <- bs_theme(
  version = 5,
  bg = "#35363A",
  fg = "#CDCDCD",
  primary = "#db9039",
  secondary = "#202124",
  success = "#E0A969",
  info = "#202124",
  warning = "#c26130",
  danger = "#FF00E3",
  base_font = font_google("Fira Sans"),
  heading_font = font_google("Fira Sans"),
  code_font = font_google("Fira Sans")
)

#E0A969
#9B9EB9