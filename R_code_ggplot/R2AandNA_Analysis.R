# NA and R2A analysis over time

#Make a list to order the strains by Phyla
#G-Proteobacteria, B-Proteobacteria, A-Proteobacteria, Firmicutes, Actinos, Bacteroidetes
strain_order <- c('Pseudomonas_putida_KT2442', 'Pseudomonas_E5', 'Pseudomonas_RPE1',	
                  'Pseudomonas_RDP22', 'Pseudomonas_RDP27',	
                  'Luteibacter_BM7',	'Lysobacter_BM12',	'Stenotrophomonas_BM25',
                  'Variovax_RPC5', 'Burkholderia_RCH25', 'Massilia_sp', 'Massilia_Z16', 'Massilia_MnBlack',
                  'Ensifer_BM17', 'Sphingobium_Z2', 'Methylobacterium_RPE3',
                  'Chryseobacterium_SCH11', 'Dyadobacter_BM9',
                  'Exiguobacterium_RDH20',	'Exiguobacterium_RDH25',	'Bacillus_SCH24', 
                  'Paenibacillus_E12',
                  'Streptomyces_RDH1',	'Streptomyces_RCH20P',	'Cellulosimicrobium_BM1',		
                  'Microbacterium_BM4')

# NA data 48h 
NA50_48h <- read.csv("50NA_forAnalysis_2.csv", header = TRUE)
NA50_48h_pivot <- pivot_longer(NA50_48h, c(2:13), values_drop_na = FALSE)
NA50_48h_pivot$Lawn <- as.factor(NA50_48h_pivot$Strain_ID)
NA50_48h_pivot$Spot <- as.factor(NA50_48h_pivot$name)
NA50_48h_pivot$value <- as.numeric(NA50_48h_pivot$value)
HalfNA_48h <- rep("HalfNA-48h", 144)
NA50_48h_pivot$MediaTime <- HalfNA_48h
HalfNA <- rep("HalfNA", 144)
NA50_48h_pivot$Media <- HalfNA
Time48h <- rep("48h", 144)
NA50_48h_pivot$Time <- Time48h

# NA data 96h
NA50_96h <- read.csv("50NA_forAnalysis_2_96h.csv", header = TRUE)
NA50_96h_pivot <- pivot_longer(NA50_96h, c(2:13), values_drop_na = FALSE)
NA50_96h_pivot$Lawn <- as.factor(NA50_96h_pivot$Strain_ID)
NA50_96h_pivot$Spot <- as.factor(NA50_96h_pivot$name)
NA50_96h_pivot$value <- as.numeric(NA50_96h_pivot$value)
HalfNA_96h <- rep("HalfNA-96h", 144)
NA50_96h_pivot$MediaTime <- HalfNA_96h
HalfNA <- rep("HalfNA", 144)
NA50_96h_pivot$Media <- HalfNA
Time96h_2 <- rep("96h", 144)
NA50_96h_pivot$Time <- Time96h_2

Merged_NA <- rbind(NA50_48h_pivot, NA50_96h_pivot)


ggplot(data = Merged_NA, aes(x=factor(name, level = strain_order),
                             y=factor(Strain_ID, level = strain_order), fill=value) ) + 
  facet_grid(Time ~ .) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 50% NA") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "grey95", 
                       midpoint = 0, space = "Lab",
                       na.value = "whitesmoke", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        strip.text = element_text(face="bold", size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))




ggplot(data = Merged_NA, aes(x=factor(name, level = strain_order),
                             y=factor(Strain_ID, level = strain_order), fill=value) ) + 
  facet_grid(Time ~ .) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 50% NA") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "grey95", 
                       midpoint = 0, space = "Lab",
                       na.value = "whitesmoke", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        strip.text = element_text(face="bold", size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))




