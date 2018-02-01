#Comments
installed.packages("tidyverse")
library(tidyverse)
#In terminal, copy data
#cp ~/Documents/MICB425_materials/Sannich... ~/Documents/MICB425_portfolio

#Only for materials repo
#git reset --hard origin/master

#Load data
read.table(file="Saanich.metadata.txt")
#Save data as object in environment
Tiffany=read.table(file="Saanich.metadata.txt", header=TRUE, row.names = 1, sep = "\t", na.strings = c("NAN","NA","."))

OTU=read.table(file="Saanich.OTU.txt", header = TRUE, row.names = 1, sep = "\t", na.strings = c("NAN", "NA","."))



