# load libraries
library(tidyverse)
library(MASS)

# load data
data(iris)
head(iris)

# visualize data
plot <- iris %>% 
  ggplot(aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point()

# run regression
lm <- glm(Sepal.Length ~ Sepal.Width + Petal.Length + factor(Species), 
          data = iris)
summary(lm)
