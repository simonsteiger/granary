
box::use(
  tidyr[tibble],
  dplyr[arrange],
)

vermont <- tibble(
  name = "vermont",
  stage = c(rep("Autolysis", times = 3), "Final fermentation", rep("Levain", times = 3)),
  ingredient = c("bread flour", "whole-rye flour", "water", "salt", "bread flour", "water", "mature culture"),
  weight = c(6.5, 1.5, 4, 0.19, 2, 2.5, 0.4),
  levain = 12,
  auto = 0.5,
  soaker = NA,
  bulk = 2.5,
  bulktemp = 21,
  fold = 1,
  final = 18,
  finaltemp = 4,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

vollkornbrot <- tibble(
  name = "vollkornbrot",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3), rep("Soaker", times = 2)),
  ingredient = c("whole-rye flour", "water", "salt", "yeast", "sunflower seeds", "whole-rye flour", "water", "mature culture", "rye chops", "water"),
  weight = c(2.73, 0.94, 0.2, 0.18, 0.55, 4.11, 4.11, 0.206, 3.16, 3.16),
  levain = 12,
  auto = NA,
  soaker = 12,
  bulk = 0.2,
  bulktemp = 28,
  fold = NA,
  final = 0.8,
  finaltemp = 28,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
  )

semolina <- tibble(
  name = "semolina",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3)),
  ingredient = c("bread flour", "durum flour", "water", "toasted sesame", "salt", "bread flour",
                 "water", "mature culture"),
  weight = c(166, 400, 321, 33, 13, 100, 132, 20),
  levain = 12,
  auto = NA,
  soaker = NA,
  bulk = 2,
  bulktemp = 24,
  fold = 1,
  final = 18,
  finaltemp = 4,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
  )

brioche <- tibble(
  name = "brioche",
  stage = "Final fermentation",
  ingredient = c("bread flour", "manitoba flour", "water", "eggs", "salt", "sugar", "yeast", "butter"),
  weight = c(200, 200, 36, 200, 10, 48, 20, 200),
  levain = NA,
  auto = NA,
  soaker = NA,
  bulk = 1,
  bulktemp = 24,
  fold = NA,
  final = 12,
  finaltemp = 4,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

olivelevain <- tibble(
  name = "olivelevain",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3)),
  ingredient = c("bread flour", "whole-wheat flour", "water", "salt", "olives",
                 "bread flour", "water", "mature culture"),
  weight = c(9, 1, 6.3, .15, 2.5, 1.8, 2.25, .36),
  levain = 12,
  auto = NA,
  soaker = NA,
  bulk = 2.5,
  bulktemp = 24,
  fold = 2,
  final = 18,
  finaltemp = 4,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

fivegrain <- tibble(
  name = "fivegrain",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3), rep("Soaker", times = 6)),
  ingredient = c("yeast", "bread flour", "whole-wheat flour", "water", "salt", "bread flour",
                 "water", "mature culture", "cracked rye", "flaxseeds", "sunflower seeds", "oats", "water", "salt"),
  weight = c(0.08, 5, 2.5, 2.61, 0.182, 2.5, 3.13, 0.5, 0.92, 0.92, 0.77, 0.77, 4.06, 0.068),
  levain = 12,
  auto = NA,
  soaker = 12,
  bulk = 2.5,
  bulktemp = 24,
  fold = 2,
  final = 18,
  finaltemp = 4,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

pal_m <- tibble(
  name = "pain au levain, mixed starters",
  stage = c(rep("Final fermentation", times = 4), rep("Levain", times = 6)),
  ingredient = c("bread flour", "whole-wheat flour", "water", "salt",
                 "bread flour", "water", "mature culture, wheat",
                 "bread flour", "water", "mature culture, rye"),
  weight = c(7.6, 0.8, 5.14, 0.18, 0.8, 1, 0.16, 0.8, 0.66, 0.04),
  levain = 12,
  auto = NA,
  soaker = 12,
  bulk = 2.5,
  bulktemp = 24,
  fold = 2,
  final = 18,
  finaltemp = 4,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

wwm <- tibble(
  name = "whole-wheat multigrain",
  stage = c(rep("Final fermentation", times = 6), rep("Levain", times = 3), rep("Soaker", times = 2)),
  ingredient = c("bread flour", "whole-wheat flour", "water", "salt", "yeast", "honey",
                 "bread flour", "water", "mature culture",
                 "grain mix", "water"),
  weight = c(3.8, 5, 3.84, 0.22, 0.1, 0.3, 1.2, 1.5, 0.24, 1.8, 2.16),
  levain = 12,
  auto = NA,
  soaker = 12,
  bulk = 2.5,
  bulktemp = 24,
  fold = 2,
  final = 18,
  finaltemp = 4,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)",
)

pry <- tibble(
  name = "pain rustique (yeast)",
  stage = c(rep("Final fermentation", times = 4), rep("Levain", times = 3)),
  ingredient = c("bread flour", "water", "salt", "yeast",
                 "bread flour", "water", "yeast"),
  weight = c(5, 1.9, .2, .14, 5, 5, .01),
  levain = 12,
  auto = NA,
  soaker = 12,
  bulk = 2.5,
  bulktemp = 24,
  fold = 2,
  final = 18,
  finaltemp = 4,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)"
)

pizza <- tibble(
  name = "pizza (yeast)",
  stage = c(rep("Final fermentation", times = 5), rep("Levain", times = 3)),
  ingredient = c("bread flour", "water", "salt", "yeast", "evoo",
                 "bread flour", "water", "yeast"),
  weight = c(2.06, 1.44, .046, .033, .13, .52, .31, .001),
  levain = 12,
  auto = NA,
  soaker = NA,
  bulk = 2,
  bulktemp = 24,
  fold = 1,
  final = 0,
  finaltemp = NA,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)"
)

ciabatta_biga <- tibble(
  name = "ciabatta (biga)",
  stage = c(rep("Final fermentation", times = 4), rep("B", times = 3)),
  ingredient = c("bread flour", "water", "salt", "yeast",
                 "bread flour", "water", "yeast"),
  weight = c(8, 6.1, .2, .116, 2, 1.2, .004),
  levain = 12,
  auto = NA,
  soaker = NA,
  bulk = 3,
  bulktemp = 24,
  fold = 2,
  final = 1.5,
  finaltemp = 24,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)"
  )

mpc <- tibble(
  name = "miche pointe a calliere",
  stage = c(rep("Final fermentation", times = 3), rep("Levain", times = 3)),
  ingredient = c("high extraction wheat flour", "water", "salt",
                 "high extraction wheat flour", "water", "mature culture"),
  weight = c(8, 7, .18, 2, 1.2, .4),
  levain = 12,
  auto = NA,
  soaker = NA,
  bulk = 2.5,
  bulktemp = 24,
  fold = 2,
  final = 2,
  finaltemp = 24,
  source = "Bread: a baker's book of techniques and recipes (Jeffrey Hamelman)"
  )

cookbook <-
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
    mpc
  ) |>
  arrange(name)
