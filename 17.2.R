library(tidyverse)
sim1a <- tibble(
  x = rep(1:10, each = 3),
  y = x * 1.5 + 6 + rt(length(x), df = 2)
)
mod <- lm(y~x, data = sim1a)
ggplot(sim1a, aes(x, y)) +
  geom_point(size = 2, color = "grey30") +
  geom_abline(
    aes(intercept = mod$coefficients[1], slope = mod$coefficients[2])
  )
mod$coefficients