
library(tidyverse)
source("https://bioconductor.org/biocLite.R")
biocLite("phyloseq")
a
library(phyloseq)
load("phyloseq_object.RData")

physeq

plot_bar(physeq, fill="Class")
physeq_percent = transform_sample_counts(physeq, function(x) 100 * x/sum(x))
plot_bar(physeq_percent, fill="Class")

plot_bar(physeq_percent, fill="Class") + 
  geom_bar(aes(fill=Phylum), stat="identity")+labs( x="Sample depth", y="Percent relative abundance",title ="Class from 10 to 200 m in Saanich Inlet")

Tiffany %>% 
  select( NH4_uM, NO2_uM, NO3_uM,O2_uM, PO4_uM, SiO2_uM )


plot_bar(physeq_percent, fill="Tiffany") +
  geom_bar(aes(fill=Tiffany), stat="identity") +
  facet_wrap(~Tiffany)

plot_bar(physeq_percent, fill="Phylum") +
  geom_bar(aes(fill=Phylum), stat="identity") +
  facet_wrap(~Phylum)
