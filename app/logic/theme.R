
box::use(
  thematic[thematic_shiny, thematic_on, font_spec],
  bslib[bs_theme, font_google],
)

thematic_shiny()
thematic_on(
  bg = "#ffffff",
  fg = "#4161ab",
  qualitative = c("#66aabb", "#4161ab", "#c26130", "#912e21"),
  font = font_spec("Fira Sans", scale = 1.75)
  )

theme <-  bs_theme(
  version = 5,
  bg = "#ffffff",
  fg = "#565b85",
  primary = "#E0A969",
  secondary = "#4161ab",
  success = "#38FF12",
  info = "#e8e9f3",
  warning = "#c26130",
  danger = "#FF00E3",
  base_font = font_google("Fira Sans"),
  heading_font = font_google("Fira Sans"),
  code_font = font_google("Fira Sans")
)

#E0A969
#9B9EB9