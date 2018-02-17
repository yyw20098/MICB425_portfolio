


plot_bar(physeq_percent, fill="Phylum") +
  geom_bar(aes(fill=Phylum), stat="identity") +
  facet_wrap(~Phylum)

plot_bar(physeq_percent, fill="Phylum") +
  geom_bar(aes(fill=Phylum), stat="identity") +
  facet_wrap(~Phylum, scales="free_y") +
  theme(legend.position="none")

Tiffany %>% 
  select( NH4_uM, NO2_uM, NO3_uM,O2_uM, PO4_uM, SiO2_uM )
#Check that gather worked
Name=Tiffany %>% 
  gather(key="Nutrients",value="uM",2:6,8)

#Put gathered data into a plot
Tiffany %>% 
  gather(key="Nutrients",value="uM",2:6,8) %>% 

ggplot(aes(x=Depth_m,y=uM))+
geom_point()+
facet_wrap(~Nutrients, scales="free_y")+
geom_line()   
