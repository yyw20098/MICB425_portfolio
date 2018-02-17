library(tidyverse)

Tiffany %>% 
  select(Temperature_C)

Tiffany %>% 
  mutate(Temperature_F = Temperature_C*33.8) %>% 
ggplot() + geom_point(aes(x=Temperature_F, y=Depth_m))


