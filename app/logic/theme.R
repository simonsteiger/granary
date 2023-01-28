# app/logic/theme

box::use(
  thematic[thematic_shiny, thematic_on, font_spec],
  bslib[bs_theme],
)

thematic_shiny()
thematic_on(
  bg = "#ffffff", 
  fg = "#4161ab", 
  qualitative = c("#66aabb", "#4161ab", "#c26130", "#912e21"), 
  font = font_spec("Fira Sans", scale = 1.75)
  )

theme <- bs_theme(
  bootswatch = "minty"
  )