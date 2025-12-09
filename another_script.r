library(tidyverse)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = cty)) +
  geom_smooth(mapping = aes(x = displ, y = cty))

## make changes
