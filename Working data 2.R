
#Load data
read. table(file="Saanich.metadata.txt")
#Save data as object in environment
metadata=read.table(file="Saanich.metadata.txt", header=TRUE, row.names = 1, sep = "\t", na.strings = c("NAN","NA","."))

library(dplyr)
Tiffany %>% 
select(O2_uM)

metadata %>% 
select(matches("O2|oxygen"))

metadata %>% 
  filter(O2_uM == 0)
metadata %>% 
  filter(O2_uM == 0) %>% 
  select(Depth_m)
metadata[metadata$O2_uM == 0, "Depth_m"]

metadata %>% 
  select(matches("CH4_nM"))

metadata %>% 
  select(matches("temp"))

#Variables are CH4_nM and Temperature_C

metadata %>%
  filter(CH4_nM>100)%>%
  filter(Temperature_C<10)%>%
  Select(Depth_m, CH4_nM, Temperature_C)

metadata %>%
  filter(CH4_nM >100 & Temperature_C<10)%>%
  select(Depth_m, CH4_nM, Temperature_C)

mutate(N2O_nM=N2O_nM/1000)%>%
  Select(N2O_nM, N2O_nM)

metadata %>% 
  mutate(N2O_uM = N2O_nM/1000)
