library(tidyverse)
source("https://bioconductor.org/biocLite.R")
biocLite("phyloseq")

ggplot(Tiffany, aes(x=PO4_uM, y=Depth_m))

ggplot(Tiffany, aes(x=PO4_uM, y=Depth_m))
geom_point(color="purple")

ggplot(Tiffany, aes(x=PO4_uM, y=Depth_m, color="purple")) +
  geom_point()

ggplot(Tiffany, aes(x=PO4_uM, y=Depth_m)) +
  geom_point(color="purple", shape=17)


