box::use(
  magrittr[`%>%`],
  tbl = tibble,
  dp = dplyr,
  sh = shiny,
  emo,
)

vermont <- tbl$tibble(
  name = "Vermont sourdough",
  tags = "liquid levain",
  stage = c(rep("Autolysis", times = 3), "Final fermentation", rep("Levain", times = 3)),
  ingredient = c("bread flour", "whole-rye flour", "water", "salt", "bread flour", "water", "mature culture"),
  weight = c(6.5, 1.5, 4, 0.19, 2, 2.5, 0.4),
  text = paste0(
    sh$tags$h6("1. Liquid levain"),
    sh$tags$p("Mix and ripen for 12-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Mixing"),
    sh$tags$p(
      "Mix all except salt and levain; autolyse for 20 to 60 minutes.
      Add salt and levain and mix until moderate gluten development.
      Desired dough temperature: 24°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Bulk fermentation"),
    sh$tags$p("2.5 hours."),
    sh$tags$hr(),
    sh$tags$h6("4. Folding"),
    sh$tags$p("Fold either once after 75 minutes or twice at 50 minute intervals."),
    sh$tags$hr(),
    sh$tags$h6("5. Final fermentation"),
    sh$tags$p("2 hours at 76°C, up to 8 hours at 10°C, or up to 18 hours 4°C."),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p("Bake at 240°C for 45 minutes.")
  )
)

vollkornbrot <- tbl$tibble(
  name = "Vollkornbrot",
  tags = "sourdough;soaker;keeps well",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3), rep("Soaker", times = 2)),
  ingredient = c("whole-rye flour", "water", "salt", "yeast", "sunflower seeds", "whole-rye flour", "water", "mature culture", "rye chops", "water"),
  weight = c(2.73, 0.94, 0.2, 0.18, 0.55, 4.11, 4.11, 0.206, 3.16, 3.16),
  text = paste0(
    sh$tags$h6("1. Sourdough"),
    sh$tags$p("Mix and ripen for 14-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Soaker"),
    sh$tags$p("Pour cold water and cover; in hot weather, add some or all of dough's salt."),
    sh$tags$hr(),
    sh$tags$h6("3. Mixing"),
    sh$tags$p("Mix for 10 minutes. Desired dough temperature: 29°C."),
    sh$tags$hr(),
    sh$tags$h6("4. Bulk fermentation"),
    sh$tags$p("10 to 20 minutes."),
    sh$tags$hr(),
    sh$tags$h6("5. Final fermentation"),
    sh$tags$p("50 to 60 minutes."),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p(
      "Bake at 240°C for 15 minutes, then lower to 195°C for 75 minutes. 
      High water content requires a full bake."
      )
  )
)

semolina <- tbl$tibble(
  name = "Semolina Bread",
  tags = "liquid levain",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3)),
  ingredient = c(
    "bread flour", "durum flour", "water", "toasted sesame", "salt", "bread flour",
    "water", "mature culture"
  ),
  weight = c(166, 400, 321, 33, 13, 100, 132, 20),
  text = paste0(
    sh$tags$h6("1. Liquid levain"),
    sh$tags$p("Mix and ripen for 12-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Mixing"),
    sh$tags$p(
      "Mix for around 5 minutes; be careful not to mix the durum flour for too long.
      Desired dough temperature: 24°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Bulk fermentation"),
    sh$tags$p("2 hours."),
    sh$tags$hr(),
    sh$tags$h6("4. Folding"),
    sh$tags$p("Fold once after 1 hour."),
    sh$tags$hr(),
    sh$tags$h6("5. Final fermentation"),
    sh$tags$p("2 hours at 24°C, up to 8 hours at 10°C, or up to 18 hours 4°C."),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p("Bake at 240°C for 45 minutes.")
  )
)

brioche <- tbl$tibble(
  name = "Classic Brioche",
  tags = "yeast;enriched",
  stage = "Final fermentation",
  ingredient = c("bread flour", "manitoba flour", "water", "eggs", "salt", "sugar", "yeast", "butter"),
  weight = c(200, 200, 36, 200, 10, 48, 20, 200),
  text = paste0(
    sh$tags$h6("1. All ingredients cold"),
    sh$tags$p("Yes. Even your mixing bowl, according to Jeffrey."),
    sh$tags$hr(),
    sh$tags$h6("2. Mixing"),
    sh$tags$p(
      "Mix for... forever."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Cold fermentation"),
    sh$tags$p("Ferment overnight in the fridge."),
    sh$tags$hr(),
    sh$tags$h6("4. Shaping"),
    sh$tags$p("Braid away!"),
    sh$tags$hr(),
    sh$tags$h6("5. Final fermentation"),
    sh$tags$p("Ripen for 90 minutes at 27°C, or until the dough almost entirely fills the mould."),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p("Bake at 195°C for 35 minutes.")
  )
)

olivelevain <- tbl$tibble(
  name = "Olive Levain",
  tags = "liquid levain",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3)),
  ingredient = c(
    "bread flour", "whole-wheat flour", "water", "salt", "olives",
    "bread flour", "water", "mature culture"
  ),
  weight = c(9, 1, 6.3, .15, 2.5, 1.8, 2.25, .36),
  text = paste0(
    sh$tags$h6("1. Liquid levain"),
    sh$tags$p("Mix and ripen for 12-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Mixing"),
    sh$tags$p(
      "Mix for around 6 minutes, or until moderate gluten development.
      Add the olives and mix until incorporated.
      Desired dough temperature: 24°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Bulk fermentation"),
    sh$tags$p("2.5 hours."),
    sh$tags$hr(),
    sh$tags$h6("4. Folding"),
    sh$tags$p("Fold once after 75 minutes."),
    sh$tags$hr(),
    sh$tags$h6("5. Final fermentation"),
    sh$tags$p("Preferably cold: up to 8 hours at 10°C, or up to 18 hours 4°C."),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p("Bake at 240°C for 45 minutes.")
  )
)

fivegrain <- tbl$tibble(
  name = "Fivegrain Levain",
  tags = "liquid levain;soaker;keeps well",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3), rep("Soaker", times = 6)),
  ingredient = c(
    "yeast", "bread flour", "whole-wheat flour", "water", "salt", "bread flour",
    "water", "mature culture", "cracked rye", "flaxseeds", "sunflower seeds", "oats", "water", "salt"
  ),
  weight = c(0.08, 5, 2.5, 2.61, 0.182, 2.5, 3.13, 0.5, 0.92, 0.92, 0.77, 0.77, 4.06, 0.068),
  text = paste0(
    sh$tags$h6("1. Liquid levain"),
    sh$tags$p("Mix and ripen for 12-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Soaker"),
    sh$tags$p("Pour hot water and cover."),
    sh$tags$hr(),
    sh$tags$h6("3. Mixing"),
    sh$tags$p(
      "Mix for 6 minutes or until moderate gluten development. 
      Desired dough temperature: 24°C."
      ),
    sh$tags$hr(),
    sh$tags$h6("4. Bulk fermentation"),
    sh$tags$p("Let rest for 60 to 90 minutes."),
    sh$tags$hr(),
    sh$tags$h6("5. Folding"),
    sh$tags$p("If the bulk fermentation lasts 90 minutes, fold once at 45 minutes."),
    sh$tags$hr(),
    sh$tags$h6("6. Final fermentation"),
    sh$tags$p(
      "Let rest for 60 minutes, or up to 8 hours at 10°C, or up to 18 hours 4°C.
      For cold fermentation, leave out yeast and extend bulk fermentation to 2 hours."
    ),
    sh$tags$hr(),
    sh$tags$h6("7. Baking"),
    sh$tags$p(
      "Bake at 240°C for 45 minutes. 
      High water content requires a full bake."
      )
  )
)

pal_m <- tbl$tibble(
  name = "Pain au Levain",
  tags = "liquid levain;sourdough",
  stage = c(rep("Final fermentation", times = 4), rep("Levain", times = 6)),
  ingredient = c(
    "bread flour", "whole-wheat flour", "water", "salt",
    "bread flour", "water", "mature culture, wheat",
    "bread flour", "water", "mature culture, rye"
  ),
  weight = c(7.6, 0.8, 5.14, 0.18, 0.8, 1, 0.16, 0.8, 0.66, 0.04),
  text = paste0(
    sh$tags$h6("1. Liquid levain"),
    sh$tags$p("Mix 12 hours before final mix and ripen at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Sourdough"),
    sh$tags$p("Mix and ripen for 14-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("3. Mixing"),
    sh$tags$p(
      "Mix all except salt and levain; autolyse for 20 to 60 minutes.
      Add salt and levain and mix until moderate gluten development.
      Desired dough temperature: 24°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("4. Bulk fermentation"),
    sh$tags$p("2.5 hours."),
    sh$tags$hr(),
    sh$tags$h6("5. Folding"),
    sh$tags$p("Fold twice at 50 minute intervals."),
    sh$tags$hr(),
    sh$tags$h6("6. Final fermentation"),
    sh$tags$p("2 hours at 76°C, up to 8 hours at 10°C, or up to 18 hours 4°C."),
    sh$tags$hr(),
    sh$tags$h6("7. Baking"),
    sh$tags$p("Bake at 240°C for 45 minutes.")
  )
)

wwm <- tbl$tibble(
  name = "Whole-wheat Multigrain",
  tags = "liquid levain;soaker;keeps well",
  stage = c(rep("Final fermentation", times = 6), rep("Levain", times = 3), rep("Soaker", times = 2)),
  ingredient = c(
    "bread flour", "whole-wheat flour", "water", "salt", "yeast", "honey",
    "bread flour", "water", "mature culture",
    "grain mix", "water"
  ),
  weight = c(3.8, 5, 3.84, 0.22, 0.1, 0.3, 1.2, 1.5, 0.24, 1.8, 2.16),
  text = paste0(
    sh$tags$h6("1. Liquid levain"),
    sh$tags$p("Mix and ripen for 12-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Soaker"),
    sh$tags$p("Pour hot water and cover."),
    sh$tags$hr(),
    sh$tags$h6("3. Mixing"),
    sh$tags$p(
      "Mix for 6 minutes or until moderate gluten development. 
      Desired dough temperature: 24°C."
      ),
    sh$tags$hr(),
    sh$tags$h6("4. Bulk fermentation"),
    sh$tags$p("1 to 2 hours."),
    sh$tags$hr(),
    sh$tags$h6("5. Folding"),
    sh$tags$p("If the bulk fermentation lasts 2 hours, fold once after 1 hour."),
    sh$tags$hr(),
    sh$tags$h6("6. Final fermentation"),
    sh$tags$p("Let rest for 60 minutes."),
    sh$tags$hr(),
    sh$tags$h6("7. Baking"),
    sh$tags$p(
      "Bake at 240°C for 45 minutes. 
      High water content requires a full bake."
      )
  )
)

pry <- tbl$tibble(
  name = "Pain Rustique",
  tags = "poolish",
  stage = c(rep("Final fermentation", times = 4), rep("Poolish", times = 3)),
  ingredient = c(
    "bread flour", "water", "salt", "yeast",
    "bread flour", "water", "yeast"
  ),
  weight = c(5, 1.9, .2, .14, 5, 5, .01),
  text = paste0(
    sh$tags$h6("1. Poolish"),
    sh$tags$p("Mix and ripen for 12-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Mixing"),
    sh$tags$p(
      "Mix all except salt and levain; autolyse for 20 to 60 minutes.
      Add salt and levain and mix for 1 to 2 minutes.
      Desired dough temperature: 24°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Bulk fermentation"),
    sh$tags$p("70 minutes."),
    sh$tags$hr(),
    sh$tags$h6("4. Folding"),
    sh$tags$p("Two quick folds after 25 and 50 minutes."),
    sh$tags$hr(),
    sh$tags$h6("5. Final fermentation"),
    sh$tags$p("20 to 25 minutes."),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p("Bake at 240°C for 45 minutes.")
  )
)

pizza <- tbl$tibble(
  name = "Pizza",
  tags = "biga",
  stage = c(rep("Final fermentation", times = 5), rep("Biga", times = 3)),
  ingredient = c(
    "bread flour", "water", "salt", "yeast", "evoo",
    "bread flour", "water", "yeast"
  ),
  weight = c(2.06, 1.44, .046, .033, .13, .52, .31, .001),
  text = paste0(
    sh$tags$h6("1. Biga"),
    sh$tags$p("Mix and ripen for 12-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Mixing"),
    sh$tags$p(
      "Add all ingredients except the oil.
      Mix until moderate gluten development.
      Then add the oil and mix until moderate gluten development.
      Desired dough temperature: 24°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Bulk fermentation"),
    sh$tags$p("2 hours; alternatively, divide and refigerate for 16 hours."),
    sh$tags$hr(),
    sh$tags$h6("4. Folding"),
    sh$tags$p("One fold after 1 hour."),
    sh$tags$hr(),
    sh$tags$h6("5. Final fermentation"),
    sh$tags$p("No need for final fermentation, ready to bake once shaped!"),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p("Very. Hot.", emo$ji("fire"))
  )
)

ciabatta_biga <- tbl$tibble(
  name = "Ciabatta",
  tags = "biga",
  stage = c(rep("Final fermentation", times = 4), rep("Biga", times = 3)),
  ingredient = c(
    "bread flour", "water", "salt", "yeast",
    "bread flour", "water", "yeast"
  ),
  weight = c(8, 6.1, .2, .116, 2, 1.2, .004),
  text = paste0(
    sh$tags$h6("1. Biga"),
    sh$tags$p("Mix and ripen for 12-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Mixing"),
    sh$tags$p(
      "Mix for around 10 minutes.
      Bassinage is a good idea.
      Desired dough temperature: 24°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Bulk fermentation"),
    sh$tags$p("3 hours."),
    sh$tags$hr(),
    sh$tags$h6("4. Folding"),
    sh$tags$p("Two folds at 1 hour intervals."),
    sh$tags$hr(),
    sh$tags$h6("5. Final fermentation"),
    sh$tags$p("Let rest for 90 minutes."),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p("Bake for 40 minutes at 240°C.")
  )
)

mpc <- tbl$tibble(
  name = "Miche Pointe à Callière",
  tags = "stiff levain;keeps well",
  stage = c(rep("Final fermentation", times = 3), rep("Levain", times = 3)),
  ingredient = c(
    "high extraction wheat flour", "water", "salt",
    "high extraction wheat flour", "water", "mature culture"
  ),
  weight = c(8, 7, .18, 2, 1.2, .4),
  text = paste0(
    sh$tags$h6("1. Stiff-textured levain"),
    sh$tags$p("Mix and ripen for 12 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Mixing"),
    sh$tags$p(
      "Mix all except salt and levain; autolyse for 20 to 60 minutes.
      Add salt and levain and mix until moderate gluten development.
      Desired dough temperature: 24°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Bulk fermentation"),
    sh$tags$p("2.5 hours."),
    sh$tags$hr(),
    sh$tags$h6("4. Folding"),
    sh$tags$p("Twice at 50 minute intervals or three times at 40 minute intervals."),
    sh$tags$hr(),
    sh$tags$h6("5. Final fermentation"),
    sh$tags$p("2 to 2.5 hours; doesn't favour overnight fermentation."),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p(
      "Bake at 225°C for 15 minutes, then lower to 215°C for 45 minutes.
      High water content requires a full bake."
    )
  )
)

flatbread <- tbl$tibble(
  name = "Flat Bread",
  tags = "leftover levain",
  stage = c(rep("Final fermentation", times = 5)),
  ingredient = c(
    "whole-wheat flour", "bread flour", "liquid levain",
    "salt", "cumin, toasted"
  ),
  weight = c(7, 7, 32, .5, .2),
  text = paste0(
    sh$tags$h6("1. Mixing"),
    sh$tags$p("Mix and knead by hand for 3 minutes."),
    sh$tags$hr(),
    sh$tags$h6("2. Shaping"),
    sh$tags$p(
      "Roll out thinly."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Frying"),
    sh$tags$p("Fry in a skillet until crispy.")
  )
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
  ) %>%
  dp$arrange(name)
