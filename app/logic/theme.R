
box::use(
  bslib[bs_theme, font_google],
)

#' @export
light <- bs_theme(
  version = 5,
  bg = "#ffffff",
  fg = "#565b85",
  primary = "#E0A969",
  secondary = "#565b85",
  success = "#38FF12",
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
  bg = "#565b85",
  fg = "#ffffff",
  primary = "#E0A969",
  secondary = "#565b85",
  success = "#38FF12",
  info = "#46496b",
  warning = "#c26130",
  danger = "#FF00E3",
  base_font = font_google("Fira Sans"),
  heading_font = font_google("Fira Sans"),
  code_font = font_google("Fira Sans")
)

#E0A969
#9B9EB9