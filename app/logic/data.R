box::use(
  tidyr[tibble],
  dplyr[arrange],
  shiny[tags],
  emo,
)

vermont <- tibble(
  name = "Vermont sourdough",
  type = "sourdough",
  stage = c(rep("Autolysis", times = 3), "Final fermentation", rep("Levain", times = 3)),
  ingredient = c("bread flour", "whole-rye flour", "water", "salt", "bread flour", "water", "mature culture"),
  weight = c(6.5, 1.5, 4, 0.19, 2, 2.5, 0.4),
  text = paste0(
    tags$h6("1. Liquid levain"),
    tags$p("Mix and ripen for 12-16 hours at 21°C."),
    tags$hr(),
    tags$h6("2. Mixing"),
    tags$p(
      "Mix all except salt and levain; autolyse for 20 to 60 minutes.
      Add salt and levain and mix until moderate gluten development.
      Desired dough temperature: 24°C."
    ),
    tags$hr(),
    tags$h6("3. Bulk fermentation"),
    tags$p("2.5 hours."),
    tags$hr(),
    tags$h6("4. Folding"),
    tags$p("Fold either once after 75 minutes or twice at 50 minute intervals."),
    tags$hr(),
    tags$h6("5. Final fermentation"),
    tags$p("2 hours at 76°C, up to 8 hours at 10°C, or up to 18 hours 4°C."),
    tags$hr(),
    tags$h6("6. Baking"),
    tags$p("Bake at 240°C for 45 minutes.")
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

vollkornbrot <- tibble(
  name = "Vollkornbrot",
  type = "sourdough,yeast",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3), rep("Soaker", times = 2)),
  ingredient = c("whole-rye flour", "water", "salt", "yeast", "sunflower seeds", "whole-rye flour", "water", "mature culture", "rye chops", "water"),
  weight = c(2.73, 0.94, 0.2, 0.18, 0.55, 4.11, 4.11, 0.206, 3.16, 3.16),
  text = paste0(
    tags$h6("1. Sourdough"),
    tags$p("Mix and ripen for 14-16 hours at 21°C."),
    tags$hr(),
    tags$h6("2. Soaker"),
    tags$p("Pour cold water and cover; in hot weather, add some or all of dough's salt."),
    tags$hr(),
    tags$h6("3. Mixing"),
    tags$p("Mix for 10 minutes. Desired dough temperature: 29°C."),
    tags$hr(),
    tags$h6("4. Bulk fermentation"),
    tags$p("10 to 20 minutes."),
    tags$hr(),
    tags$h6("5. Final fermentation"),
    tags$p("50 to 60 minutes."),
    tags$hr(),
    tags$h6("6. Baking"),
    tags$p(
      "Bake at 240°C for 15 minutes, then lower to 195°C for 75 minutes. 
      High water content requires a full bake."
      )
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

semolina <- tibble(
  name = "Semolina Bread",
  type = "sourdough",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3)),
  ingredient = c(
    "bread flour", "durum flour", "water", "toasted sesame", "salt", "bread flour",
    "water", "mature culture"
  ),
  weight = c(166, 400, 321, 33, 13, 100, 132, 20),
  text = paste0(
    tags$h6("1. Liquid levain"),
    tags$p("Mix and ripen for 12-16 hours at 21°C."),
    tags$hr(),
    tags$h6("2. Mixing"),
    tags$p(
      "Mix for around 5 minutes; be careful not to mix the durum flour for too long.
      Desired dough temperature: 24°C."
    ),
    tags$hr(),
    tags$h6("3. Bulk fermentation"),
    tags$p("2 hours."),
    tags$hr(),
    tags$h6("4. Folding"),
    tags$p("Fold once after 1 hour."),
    tags$hr(),
    tags$h6("5. Final fermentation"),
    tags$p("2 hours at 76°C, up to 8 hours at 10°C, or up to 18 hours 4°C."),
    tags$hr(),
    tags$h6("6. Baking"),
    tags$p("Bake at 240°C for 45 minutes.")
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

brioche <- tibble(
  name = "Hamelman's Brioche",
  type = "pastry,yeast",
  stage = "Final fermentation",
  ingredient = c("bread flour", "manitoba flour", "water", "eggs", "salt", "sugar", "yeast", "butter"),
  weight = c(200, 200, 36, 200, 10, 48, 20, 200),
  text = paste0(
    tags$h6("1. All ingredients cold"),
    tags$p("Yes. Even your mixing bowl, according to Jeffrey."),
    tags$hr(),
    tags$h6("2. Mixing"),
    tags$p(
      "Mix for... forever."
    ),
    tags$hr(),
    tags$h6("3. Cold fermentation"),
    tags$p("Ferment overnight in the fridge."),
    tags$hr(),
    tags$h6("4. Shaping"),
    tags$p("Braid away!"),
    tags$hr(),
    tags$h6("5. Final fermentation"),
    tags$p("Ripen for 90 minutes at 27°C, or until the dough almost entirely fills the mould."),
    tags$hr(),
    tags$h6("6. Baking"),
    tags$p("Bake at 195°C for 35 minutes.")
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

olivelevain <- tibble(
  name = "Olive Levain",
  type = "sourdough",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3)),
  ingredient = c(
    "bread flour", "whole-wheat flour", "water", "salt", "olives",
    "bread flour", "water", "mature culture"
  ),
  weight = c(9, 1, 6.3, .15, 2.5, 1.8, 2.25, .36),
  text = paste0(
    tags$h6("1. Liquid levain"),
    tags$p("Mix and ripen for 12-16 hours at 21°C."),
    tags$hr(),
    tags$h6("2. Mixing"),
    tags$p(
      "Mix for around 6 minutes, or until moderate gluten development.
      Add the olives and mix until incorporated.
      Desired dough temperature: 24°C."
    ),
    tags$hr(),
    tags$h6("3. Bulk fermentation"),
    tags$p("2.5 hours."),
    tags$hr(),
    tags$h6("4. Folding"),
    tags$p("Fold once after 75 minutes."),
    tags$hr(),
    tags$h6("5. Final fermentation"),
    tags$p("Preferably cold: up to 8 hours at 10°C, or up to 18 hours 4°C."),
    tags$hr(),
    tags$h6("6. Baking"),
    tags$p("Bake at 240°C for 45 minutes.")
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

fivegrain <- tibble(
  name = "Fivegrain Levain",
  type = "sourdough,yeast",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3), rep("Soaker", times = 6)),
  ingredient = c(
    "yeast", "bread flour", "whole-wheat flour", "water", "salt", "bread flour",
    "water", "mature culture", "cracked rye", "flaxseeds", "sunflower seeds", "oats", "water", "salt"
  ),
  weight = c(0.08, 5, 2.5, 2.61, 0.182, 2.5, 3.13, 0.5, 0.92, 0.92, 0.77, 0.77, 4.06, 0.068),
  text = paste0(
    tags$h6("1. Liquid levain"),
    tags$p("Mix and ripen for 12-16 hours at 21°C."),
    tags$hr(),
    tags$h6("2. Soaker"),
    tags$p("Pour hot water and cover."),
    tags$hr(),
    tags$h6("3. Mixing"),
    tags$p(
      "Mix for 6 minutes or until moderate gluten development. 
      Desired dough temperature: 24°C."
      ),
    tags$hr(),
    tags$h6("4. Bulk fermentation"),
    tags$p("Let rest for 60 to 90 minutes."),
    tags$hr(),
    tags$h6("5. Folding"),
    tags$p("If the bulk fermentation lasts 90 minutes, fold once at 45 minutes."),
    tags$hr(),
    tags$h6("6. Final fermentation"),
    tags$p(
      "Let rest for 60 minutes, or up to 8 hours at 10°C, or up to 18 hours 4°C.
      For cold fermentation, leave out yeast and extend bulk fermentation to 2 hours."
    ),
    tags$hr(),
    tags$h6("7. Baking"),
    tags$p(
      "Bake at 240°C for 45 minutes. 
      High water content requires a full bake."
      )
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

pal_m <- tibble(
  name = "Pain au Levain, mixed starters",
  type = "sourdough",
  stage = c(rep("Final fermentation", times = 4), rep("Levain", times = 6)),
  ingredient = c(
    "bread flour", "whole-wheat flour", "water", "salt",
    "bread flour", "water", "mature culture, wheat",
    "bread flour", "water", "mature culture, rye"
  ),
  weight = c(7.6, 0.8, 5.14, 0.18, 0.8, 1, 0.16, 0.8, 0.66, 0.04),
  text = paste0(
    tags$h6("1. Liquid levain"),
    tags$p("Mix 12 hours before final mix and ripen at 21°C."),
    tags$hr(),
    tags$h6("2. Sourdough"),
    tags$p("Mix and ripen for 14-16 hours at 21°C."),
    tags$hr(),
    tags$h6("3. Mixing"),
    tags$p(
      "Mix all except salt and levain; autolyse for 20 to 60 minutes.
      Add salt and levain and mix until moderate gluten development.
      Desired dough temperature: 24°C."
    ),
    tags$hr(),
    tags$h6("4. Bulk fermentation"),
    tags$p("2.5 hours."),
    tags$hr(),
    tags$h6("5. Folding"),
    tags$p("Fold twice at 50 minute intervals."),
    tags$hr(),
    tags$h6("6. Final fermentation"),
    tags$p("2 hours at 76°C, up to 8 hours at 10°C, or up to 18 hours 4°C."),
    tags$hr(),
    tags$h6("7. Baking"),
    tags$p("Bake at 240°C for 45 minutes.")
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

wwm <- tibble(
  name = "Whole-wheat Multigrain",
  type = "sourdough",
  stage = c(rep("Final fermentation", times = 6), rep("Levain", times = 3), rep("Soaker", times = 2)),
  ingredient = c(
    "bread flour", "whole-wheat flour", "water", "salt", "yeast", "honey",
    "bread flour", "water", "mature culture",
    "grain mix", "water"
  ),
  weight = c(3.8, 5, 3.84, 0.22, 0.1, 0.3, 1.2, 1.5, 0.24, 1.8, 2.16),
  text = paste0(
    tags$h6("1. Liquid levain"),
    tags$p("Mix and ripen for 12-16 hours at 21°C."),
    tags$hr(),
    tags$h6("2. Soaker"),
    tags$p("Pour hot water and cover."),
    tags$hr(),
    tags$h6("3. Mixing"),
    tags$p(
      "Mix for 6 minutes or until moderate gluten development. 
      Desired dough temperature: 24°C."
      ),
    tags$hr(),
    tags$h6("4. Bulk fermentation"),
    tags$p("1 to 2 hours."),
    tags$hr(),
    tags$h6("5. Folding"),
    tags$p("If the bulk fermentation lasts 2 hours, fold once after 1 hour."),
    tags$hr(),
    tags$h6("6. Final fermentation"),
    tags$p("Let rest for 60 minutes."),
    tags$hr(),
    tags$h6("7. Baking"),
    tags$p(
      "Bake at 240°C for 45 minutes. 
      High water content requires a full bake."
      )
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

pry <- tibble(
  name = "Pain Rustique, yeast",
  type = "yeast",
  stage = c(rep("Final fermentation", times = 4), rep("Poolish", times = 3)),
  ingredient = c(
    "bread flour", "water", "salt", "yeast",
    "bread flour", "water", "yeast"
  ),
  weight = c(5, 1.9, .2, .14, 5, 5, .01),
  text = paste0(
    tags$h6("1. Poolish"),
    tags$p("Mix and ripen for 12-16 hours at 21°C."),
    tags$hr(),
    tags$h6("2. Mixing"),
    tags$p(
      "Mix all except salt and levain; autolyse for 20 to 60 minutes.
      Add salt and levain and mix for 1 to 2 minutes.
      Desired dough temperature: 24°C."
    ),
    tags$hr(),
    tags$h6("3. Bulk fermentation"),
    tags$p("70 minutes."),
    tags$hr(),
    tags$h6("4. Folding"),
    tags$p("Two quick folds after 25 and 50 minutes."),
    tags$hr(),
    tags$h6("5. Final fermentation"),
    tags$p("20 to 25 minutes."),
    tags$hr(),
    tags$h6("6. Baking"),
    tags$p("Bake at 240°C for 45 minutes.")
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)"
)

pizza <- tibble(
  name = "Pizza, yeast",
  type = "yeast",
  stage = c(rep("Final fermentation", times = 5), rep("Biga", times = 3)),
  ingredient = c(
    "bread flour", "water", "salt", "yeast", "evoo",
    "bread flour", "water", "yeast"
  ),
  weight = c(2.06, 1.44, .046, .033, .13, .52, .31, .001),
  text = paste0(
    tags$h6("1. Biga"),
    tags$p("Mix and ripen for 12-16 hours at 21°C."),
    tags$hr(),
    tags$h6("2. Mixing"),
    tags$p(
      "Add all ingredients except the oil.
      Mix until moderate gluten development.
      Then add the oil and mix until moderate gluten development.
      Desired dough temperature: 24°C."
    ),
    tags$hr(),
    tags$h6("3. Bulk fermentation"),
    tags$p("2 hours; alternatively, divide and refigerate for 16 hours."),
    tags$hr(),
    tags$h6("4. Folding"),
    tags$p("One fold after 1 hour."),
    tags$hr(),
    tags$h6("5. Final fermentation"),
    tags$p("No need for final fermentation, ready to bake once shaped!"),
    tags$hr(),
    tags$h6("6. Baking"),
    tags$p("Very. Hot.", emo$ji("fire"))
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)"
)

ciabatta_biga <- tibble(
  name = "Ciabatta, biga",
  type = "yeast",
  stage = c(rep("Final fermentation", times = 4), rep("Biga", times = 3)),
  ingredient = c(
    "bread flour", "water", "salt", "yeast",
    "bread flour", "water", "yeast"
  ),
  weight = c(8, 6.1, .2, .116, 2, 1.2, .004),
  text = paste0(
    tags$h6("1. Biga"),
    tags$p("Mix and ripen for 12-16 hours at 21°C."),
    tags$hr(),
    tags$h6("2. Mixing"),
    tags$p(
      "Mix for around 10 minutes.
      Bassinage is a good idea.
      Desired dough temperature: 24°C."
    ),
    tags$hr(),
    tags$h6("3. Bulk fermentation"),
    tags$p("3 hours."),
    tags$hr(),
    tags$h6("4. Folding"),
    tags$p("Two folds at 1 hour intervals."),
    tags$hr(),
    tags$h6("5. Final fermentation"),
    tags$p("Let rest for 90 minutes."),
    tags$hr(),
    tags$h6("6. Baking"),
    tags$p("Bake for 40 minutes at 240°C.")
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)"
)

mpc <- tibble(
  name = "Miche Pointe à Callière",
  type = "sourdough",
  stage = c(rep("Final fermentation", times = 3), rep("Levain", times = 3)),
  ingredient = c(
    "high extraction wheat flour", "water", "salt",
    "high extraction wheat flour", "water", "mature culture"
  ),
  weight = c(8, 7, .18, 2, 1.2, .4),
  text = paste0(
    tags$h6("1. Stiff-textured levain"),
    tags$p("Mix and ripen for 12 hours at 21°C."),
    tags$hr(),
    tags$h6("2. Mixing"),
    tags$p(
      "Mix all except salt and levain; autolyse for 20 to 60 minutes.
      Add salt and levain and mix until moderate gluten development.
      Desired dough temperature: 24°C."
    ),
    tags$hr(),
    tags$h6("3. Bulk fermentation"),
    tags$p("2.5 hours."),
    tags$hr(),
    tags$h6("4. Folding"),
    tags$p("Twice at 50 minute intervals or three times at 40 minute intervals."),
    tags$hr(),
    tags$h6("5. Final fermentation"),
    tags$p("2 to 2.5 hours; doesn't favour overnight fermentation."),
    tags$hr(),
    tags$h6("6. Baking"),
    tags$p(
      "Bake at 225°C for 15 minutes, then lower to 215°C for 45 minutes.
      High water content requires a full bake."
    )
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)"
)

flatbread <- tibble(
  name = "Flat Bread, leftover levain",
  type = "sourdough",
  stage = c(rep("Final fermentation", times = 5)),
  ingredient = c(
    "whole-wheat flour", "bread flour", "liquid levain",
    "salt", "cumin, toasted"
  ),
  weight = c(7, 7, 32, .5, .2),
  text = paste0(
    tags$h6("1. Mixing"),
    tags$p("Mix and knead by hand for 3 minutes."),
    tags$hr(),
    tags$h6("2. Shaping"),
    tags$p(
      "Roll out thinly."
    ),
    tags$hr(),
    tags$h6("3. Frying"),
    tags$p("Fry in a skillet until crispy.")
  ),
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)"
)

#' @export
data <-
  rbind(
    vermont,
    vollkornbrot,
    semolina,
    brioche,
    olivelevain,
    fivegrain,
    pal_m,
    pry,
    wwm,
    pizza,
    ciabatta_biga,
    mpc,
    flatbread
  ) |>
  arrange(name)
