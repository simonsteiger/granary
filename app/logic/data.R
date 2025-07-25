box::use(
  magrittr[`%>%`],
  tbl = tibble,
  dp = dplyr,
  sh = shiny
)

walnut <- tbl$tibble(
  name = "Walnut Bread",
  tags = list(list("sourdough", "walnuts", "mature culture")),
  stage = c(rep("Sourdough", times = 3), rep("Final fermentation", times = 6)),
  ingredient = c("whole-rye flour", "water", "mature culture", "bread flour", "whole-rye flour", "water", "salt", "yeast", 
                "walnuts"),
  weight = c(3.0, 2.49, 0.15, 5.0, 2.0, 4.31, 0.18, 0.15, 2.5),
  text = paste0(
    sh$tags$h6("1. Sourdough"),
    sh$tags$p("Mix all ingredients except the walnuts until moderate gluten development. Thenn add walnuts and ripen for 14-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Bulk fermentation"),
    sh$tags$p("1 hour"),
    sh$tags$hr(),
    sh$tags$h6("3. Final fermentation"),
    sh$tags$p("50 to 60 minutes at 26°C."),
    sh$tags$hr(),
    sh$tags$h6("4. Baking"),
    sh$tags$p("Bake at 240°C for 15 minutes,
              then bake at 220°C for 20 to 25 minutes.")
  )
)


flaxseed <- tbl$tibble(
  name = "Flaxseed Bread",
  tags = list(list("sourdough", "soaker", "keeps well")),
  stage = c(rep("Sourdough", times = 3), rep("Soaker", times = 2), rep("Final fermentation", times = 5)),
  ingredient = c("whole-rye flour", "water", "mature culture", "flaxseeds", "water", "medium-rye flour", "bread flour", "water", "salt", 
                "yeast"),
  weight = c(4.0, 3.2, 0.2, 1.0, 3.0, 2.0, 4.0, 1.3, 0.18, 0.15),
  text = paste0(
    sh$tags$h6("1. Sourdough"),
    sh$tags$p("Mix and ripen for 14 to 16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Soaker"),
    sh$tags$p(
      "Pour cold water over the flaxseeds.
      Cover with plastic and let soak for 14 to 16 hours."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Bulk fermentation"),
    sh$tags$p("30 to 45 minutes"),
    sh$tags$hr(),
    sh$tags$h6("4. Final fermentation"),
    sh$tags$p("50 to 60 minutes at 26°C."),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p("Bake at 240°C for 15 minutes,
              then bake at 220°C for 40 minutes.
              Cover the cooled loaves with baker’s linen and let stand at room temperature 
              for at least several hours or up to 24 hours before slicing.
              Sprinkle sesame seeds onto the moistened surface of the loaves.")
  )
)

vermont <- tbl$tibble(
  name = "Vermont sourdough",
  tags = list("liquid levain"),
  stage = c(rep("Autolysis", times = 3), "Final dough", rep("Levain", times = 3)),
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
    sh$tags$p("2 hours at 24°C, up to 8 hours at 10°C, or up to 18 hours 4°C."),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p("Bake at 240°C for 45 minutes.")
  )
)

vollkornbrot <- tbl$tibble(
  name = "Vollkornbrot",
  tags = list(list("sourdough", "soaker")),
  stage = c(rep("Final dough", times = 5), rep("Levain", times = 3), rep("Soaker", times = 2)),
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
  tags = list(list("liquid levain", "amendment")),
  stage = c(rep("Final dough", times = 5), rep("Levain", times = 3)),
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
  tags = list(list("yeast", "enriched")),
  stage = "Final dough",
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
  tags = list(list("liquid levain", "amendment")),
  stage = c(rep("Final dough", times = 5), rep("Levain", times = 3)),
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

sourdoughseed <- tbl$tibble(
  name = "Sourdough Seed Bread",
  tags = list(list("liquid levain", "soaker")),
  stage = c(rep("Final dough", times = 5), rep("Levain", times = 3), rep("Soaker", times = 6)),
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

fivegrain <- tbl$tibble(
  name = "Fivegrain Levain",
  tags = list(list("liquid levain", "soaker")),
  stage = c(rep("Final dough", times = 6), rep("Levain", times = 3), rep("Soaker", times = 2)),
  ingredient = c(
    "bread flour", "whole-rye flour", "sunflower seeds, toasted", "sesame seeds, toasted", "water", "salt", 
    "bread flour", "water", "mature culture", 
    "flaxseeds", "water"
  ),
  weight = c(7.7, 0.8, 1.2, 0.6, 3.52, 0.23, 1.5, 1.88, 0.3, 0.7, 2.1),
  text = paste0(
    sh$tags$h6("1. Liquid levain"),
    sh$tags$p("Mix and ripen for 12-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Soaker"),
    sh$tags$p("Make a cold soaker and cover for 12-16 hours."),
    sh$tags$hr(),
    sh$tags$h6("3. Mixing"),
    sh$tags$p(
      "Mix for 6 minutes or until moderate gluten development.
      Desired dough temperature: 24°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("4. Bulk fermentation"),
    sh$tags$p("Let rest for 150 minutes."),
    sh$tags$hr(),
    sh$tags$h6("5. Folding"),
    sh$tags$p("Fold once at 75 minutes, or twice at 50 minute intervals."),
    sh$tags$hr(),
    sh$tags$h6("6. Final fermentation"),
    sh$tags$p(
      "Up to 8 hours at 10°C, or up to 18 hours at 4°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("7. Baking"),
    sh$tags$p(
      "Bake at 240°C for 40-45 minutes."
    )
  )
)

pal_m <- tbl$tibble(
  name = "Pain au Levain",
  tags = list(list("liquid levain", "sourdough")),
  stage = c(rep("Final dough", times = 4), rep("Levain", times = 6)),
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
  tags = list(list("liquid levain", "soaker")),
  stage = c(rep("Final dough", times = 6), rep("Levain", times = 3), rep("Soaker", times = 2)),
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
  tags = list("yeast"),
  stage = c(rep("Final dough", times = 4), rep("Poolish", times = 3)),
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
  tags = list("yeast"),
  stage = c(rep("Final dough", times = 5), rep("Biga", times = 3)),
  ingredient = c(
    "bread flour", "water", "salt", "yeast", "olive oil",
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
    sh$tags$p("Very. Hot.")
  )
)

ciabatta_biga <- tbl$tibble(
  name = "Ciabatta",
  tags = list(list("yeast", "high hydration")),
  stage = c(rep("Final dough", times = 4), rep("Biga", times = 3)),
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
  tags = list(list("levain", "high hydration")),
  stage = c(rep("Final dough", times = 4), rep("Levain", times = 3)),
  ingredient = c(
    "whole-wheat flour", "bread flour", "water", "salt",
    "whole-wheat flour", "water", "mature culture"
  ),
  weight = c(6, 2, 7, .18, 2, 1.2, .4),
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
  tags = list("leftover levain"),
  stage = c(rep("Final dough", times = 5)),
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

# roasted garlic
roasted_garlic <- tbl$tibble(
  name = "Roasted Garlic Levain",
  tags = list(list("levain", "amendment", "roll")),
  stage = c(rep("Final dough", times = 7), rep("Levain", times = 3)),
  ingredient = c(
    "bread flour", "whole-wheat flour", "water", "olive oil", "salt", "yeast", "roasted garlic",
    "bread flour", "water", "mature culture"
  ),
  weight = c(7, 1, 5.3, .5, .2, .1, .35, 2, 1.2, .4),
  text = paste0(
    sh$tags$h6("1. Stiff-textured levain"),
    sh$tags$p("Mix and ripen for 12 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Roasted garlic"),
    sh$tags$p(
      "Cut off the foot of the garlic cloves, leaving the skin on. 
      Drizzle some olive oil and roast in the oven for at 180°C for 40 minutes.
      Peel and briefly mash after roasting, and it's ready for mixing."
    ),
    sh$tags$h6("3. Mixing"),
    sh$tags$p(
      "Mix for around 5 minutes until the dough is of medium consistency. Adjust hydration if necessary.
      Desired dough temperature: 24°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("4. Bulk fermentation"),
    sh$tags$p("1 to 2 hours."),
    sh$tags$h6("5. Folding"),
    sh$tags$p("If the bulk fermentation lasts 2 hours, fold after one hour. Otherwise, no folds needed."),
    sh$tags$h6("6. Shaping"),
    sh$tags$p("Divide if necessary; shape round or oblong. Also good for rolls."),
    sh$tags$h6("7. Final fermentation"),
    sh$tags$p("1 to 1.5 hours at 24°C."),
    sh$tags$h6("8. Baking"),
    sh$tags$p("For 45 minutes at 240°C, with steam.")
  )
)

simits <- tbl$tibble(
  name = "Simits",
  tags = list(list("yeast", "enriched")),
  stage = c(rep("Final dough", times = 5)),
  ingredient = c(
    "bread flour", "water", "salt", "yeast", "butter"
  ),
  weight = c(3.28, 2.034, .072, .057, .722),
  text = paste0(
    sh$tags$h6("1. Mixing"),
    sh$tags$p("Mix everything except the butter. The dough without the butter will be stiff at first,
              but mix on until good gluten development. Add the butter in chunks and continue to mix until it is encorporated.
              Desired dough temperature: 24°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Bulk fermentation"),
    sh$tags$p(
      "1.5 to 2 hours."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Folding"),
    sh$tags$p(
      "Fold once halfway through bulk fermentation. 
      Don't hesitate to fold twice if the dough requires more strength."
    ),
    sh$tags$hr(),
    sh$tags$h6("4. Dividing and shaping"),
    sh$tags$p("Divide the dough into squarish 85g pieces. Flatten, then roll into 20cm long cylinders.
              Shape like a bagel. Press into damp cloth, then into sesame seeds.
              Proof on sheet pan with seeds up."),
    sh$tags$hr(),
    sh$tags$h6("5. Final fermentation"),
    sh$tags$p("45 minutes at 24°C."),
    sh$tags$hr(),
    sh$tags$h6("6. Baking"),
    sh$tags$p("Divide if necessary; shape round or oblong. Also good for rolls."),
    sh$tags$hr(),
    sh$tags$h6("7. Final fermentation"),
    sh$tags$p("1 to 1.5 hours at 24°C."),
    sh$tags$hr(),
    sh$tags$h6("8. Baking"),
    sh$tags$p("For 20 minutes at 230°C, without steam. The crust should be light brown, the interior somewhat moist.")
  )
)

bialys <- tbl$tibble(
  name = "Bialys",
  tags = list(list("yeast", "amendment")),
  stage = c(rep("Final dough", times = 4), rep("Onion filling", times = 2)),
  ingredient = c(
    "bread flour", "water", "salt", "yeast",
    "onion", "bread crumbs"
  ),
  weight = c(3.81, 2.21, .073, .061, .17, .017),
  text = paste0(
    sh$tags$h6("1. Onion filling"),
    sh$tags$p(
      "Mix finely chopped onions and bread crumbs. 
      Cover and rest for a couple of hours; this can be refrigerated for several days if made ahead of time."),
    sh$tags$hr(),
    sh$tags$h6("2. Mixing"),
    sh$tags$p(
      "Bialy dough is stiff. Mix slowly for 3 minutes to incorporate the ingredients, then faster for 5 minutes, 
      or until the gluten network is well developed. Desired dough temperature: 24°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Bulk fermentation"),
    sh$tags$p(
      "2 hours."
    ),
    sh$tags$hr(),
    sh$tags$h6("4. Folding"),
    sh$tags$p("Fold after 1 hour."),
    sh$tags$hr(),
    sh$tags$h6("5. Dividing"),
    sh$tags$p("Divide into 85g pieces. Make tight balls and proof for 30 minutes."),
    sh$tags$hr(),
    sh$tags$h6("6. Shaping and filling"),
    sh$tags$p("Make something like a baby pizza with a high crust.
              Fill with a rounded teaspoon of onion filling."),
    sh$tags$hr(),
    sh$tags$h6("7. Baking"),
    sh$tags$p("Bake for 8-10 minutes at 250°C."),
    sh$tags$hr(),
    sh$tags$h6("- Variations -"),
    sh$tags$p("Use garlic instead of or to complement the onions. Try sprinkling poppy or sesame seeds before baking.")
  )
)

blackbread <- tbl$tibble(
  name = "Black bread",
  tags = list(list("sourdough", "soaker")),
  stage = c(rep("Final dough", times = 4), rep("Soaker", times = 4)),
  ingredient = c(
    "sifted rye flour", "bread flour", "salt", "yeast",
    "old bread", "coffee, ground", "vegetable oil", "water, hot"
  ),
  weight = c(2.5, 4, .18, .15, .8, .24, .24, 4),
  text = paste0(
    sh$tags$h6("1. Sourdough"),
    sh$tags$p("Mix and ripen for 14-16 hours at 21°C."),
    sh$tags$hr(),
    sh$tags$h6("2. Old-bread soaker"),
    sh$tags$p(
      "Pour water over roasted old bread, then add coffee and oil. Stir well and cover."
    ),
    sh$tags$hr(),
    sh$tags$h6("3. Mixing"),
    sh$tags$p("Mix for 4 minutes. To control the dough temperature, you have to heat or cool the soaker before mixing.
              Desired dough temperature: 25°C."),
    sh$tags$hr(),
    sh$tags$h6("4. Bulk fermentation"),
    sh$tags$p("30 to 45 minutes."),
    sh$tags$hr(),
    sh$tags$h6("5. Dividing and shaping"),
    sh$tags$p("Divide into round or oblong pieces; between 700g and 900g each."),
    sh$tags$hr(),
    sh$tags$h6("6. Final fermentation"),
    sh$tags$p(
      "50 to 60 minutes at 27°C."
    ),
    sh$tags$hr(),
    sh$tags$h6("7. Baking"),
    sh$tags$p(
      "Bake for 15 minutes at 240°C, then lower to 210°C and finish baking for 35 to 45 minutes depending on loaf weight."
    ),
    sh$tags$hr(),
    sh$tags$h6("- Variation -"),
    sh$tags$p(
      "Roll the loafs in Black Caraway seeds before baking."
    )
  )
)

detmolder <- tbl$tibble(
  name = "Three-stage Detmolder",
  tags = list(list("sourdough", "time-consuming")),
  stage = c(
    rep("Final dough", times = 4),
    rep("Freshening", times = 3),
    rep("Basic sour", times = 3),
    rep("Full sour", times = 3)
    ),
  ingredient = c(
    "sifted rye flour", "bread flour", "water", "salt",
    "whole-rye flour", "water", "mature culture",
    "whole-rye flour", "water", "freshening",
    "whole-rye flour", "water", "basic sour"
  ),
  weight = c(5.22, 1, 4.29, .18, .08, .12, .04, 1, .78, .24, 2.7, 2.7, 2.02),
  text = paste0(
    sh$tags$h6("1. Freshening sour"),
    sh$tags$p("Mix and ripen for 5 to 6 hours at 25°C. This phase develops the yeast potential of the sourdough."),
    sh$tags$hr(),
    sh$tags$h6("2. Basic sour"),
    sh$tags$p("Mix and ripen at between 22°C and 27°C for 15 to 24 hours, depending on the temperature.
              The warmer the temperature, the shorter the rest. This stiff phase develops the acetic properties of the sourdough."),
    sh$tags$hr(),
    sh$tags$h6("3. Full sour"),
    sh$tags$p("Mix and ripen at 30°C for 3 hours. This looser phase develops the lactic properties of the sourdough."),
    sh$tags$hr(),
    sh$tags$h6("4. Mixing"),
    sh$tags$p("Mix for around 5 minutes. The result will be sticky, but don't add more flour."),
    sh$tags$hr(),
    sh$tags$h6("5. Bulk fermentation"),
    sh$tags$p("10 to 20 minutes."),
    sh$tags$hr(),
    sh$tags$h6("6. Dividing and shaping"),
    sh$tags$p("Divide into 700g to 1200g pieces and shape round."),
    sh$tags$hr(),
    sh$tags$h6("7. Final fermentation"),
    sh$tags$p("1 hour at 28°C."),
    sh$tags$hr(),
    sh$tags$h6("8. Baking"),
    sh$tags$p("Bake at 450°C for 10 minutes, then lower to 210°C and continue for 50 to 60 minutes depending on loaf weight.
              After baking, let the loaves rest for at least 24 hours to stabilize the crumb.")
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
    sourdoughseed,
    pal_m,
    pry,
    wwm,
    pizza,
    ciabatta_biga,
    mpc,
    flatbread,
    roasted_garlic,
    simits,
    bialys,
    blackbread,
    detmolder,
    flaxseed,
    walnut
  ) %>%
  dp$arrange(name)
