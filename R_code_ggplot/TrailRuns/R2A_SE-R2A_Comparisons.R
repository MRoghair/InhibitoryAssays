

setwd("~/Desktop/InhibitoryAssays")
library(tidyverse)



# R2A data 48h 
R2A_48h_abbrev <- read.csv("Data_csvs/R2A_Rep1_48h_15strains.csv", header = TRUE)
R2A_48h_abbrev$Strain_ID <- as.character(R2A_48h_abbrev$Strain_ID)
R2A_48h_abbrev_pivot <- pivot_longer(R2A_48h_abbrev, c(2:16), values_drop_na = FALSE)
R2A_48h_abbrev_pivot$Lawn <- as.factor(R2A_48h_abbrev_pivot$Strain_ID)
R2A_48h_abbrev_pivot$Spot <- as.factor(R2A_48h_abbrev_pivot$name)
R2A_48h_abbrev_pivot$value <- as.numeric(R2A_48h_abbrev_pivot$value)
R2A48h <- rep("R2A-48h", 225)
R2A_48h_abbrev_pivot$MediaTime <- R2A48h
R2A <- rep("R2A", 225)
R2A_48h_abbrev_pivot$Media <- R2A
Time48h <- rep("48h", 225)
R2A_48h_abbrev_pivot$Time <- Time48h

# R2A data 96h 
R2A_96h_abbrev <- read.csv("Data_csvs/R2A_Rep1_96h-15strains.csv", header = TRUE)
R2A_96h_abbrev$Strain_ID <- as.character(R2A_96h_abbrev$Strain_ID)
R2A_96h_abbrev_pivot <- pivot_longer(R2A_96h_abbrev, c(2:16), values_drop_na = FALSE)
R2A_96h_abbrev_pivot$Lawn <- as.factor(R2A_96h_abbrev_pivot$Strain_ID)
R2A_96h_abbrev_pivot$Spot <- as.factor(R2A_96h_abbrev_pivot$name)
R2A_96h_abbrev_pivot$value <- as.numeric(R2A_96h_abbrev_pivot$value)
R2A96h <- rep("R2A-96h", 225)
R2A_96h_abbrev_pivot$MediaTime <- R2A96h
R2A <- rep("R2A", 225)
R2A_96h_abbrev_pivot$Media <- R2A
Time96h <- rep("96h", 225)
R2A_96h_abbrev_pivot$Time <- Time96h



# SE-R2A data 48h 
SE_R2A_48h_abbrev <- read.csv("Data_csvs/SE-R2A-48h-names.csv", header = TRUE)
SE_R2A_48h_abbrev$Strain_ID <- as.character(SE_R2A_48h_abbrev$Strain_ID)
SER2A_48h_abbrev_pivot <- pivot_longer(SE_R2A_48h_abbrev, c(2:16), values_drop_na = FALSE)
SER2A_48h_abbrev_pivot$Lawn <- as.factor(SER2A_48h_abbrev_pivot$Strain_ID)
SER2A_48h_abbrev_pivot$Spot <- as.factor(SER2A_48h_abbrev_pivot$name)
SER2A_48h_abbrev_pivot$value <- as.numeric(SER2A_48h_abbrev_pivot$value)
R2A48h <- rep("SE-R2A-48h", 225)
SER2A_48h_abbrev_pivot$MediaTime <- R2A48h
SER2A <- rep("SE-R2A", 225)
SER2A_48h_abbrev_pivot$Media <- SER2A
Time48h <- rep("48h", 225)
SER2A_48h_abbrev_pivot$Time <- Time48h

# SE-R2A data 96h 
SE_R2A_96h_abbrev <- read.csv("Data_csvs/SE-R2A-96h.csv", header = TRUE)
SE_R2A_96h_abbrev$Strain_ID <- as.character(SE_R2A_96h_abbrev$Strain_ID)
SER2A_96h_abbrev_pivot <- pivot_longer(SE_R2A_96h_abbrev, c(2:16), values_drop_na = FALSE)
SER2A_96h_abbrev_pivot$Lawn <- as.factor(SER2A_96h_abbrev_pivot$Strain_ID)
SER2A_96h_abbrev_pivot$Spot <- as.factor(SER2A_96h_abbrev_pivot$name)
SER2A_96h_abbrev_pivot$value <- as.numeric(SER2A_96h_abbrev_pivot$value)
SER2A96h <- rep("SE-R2A-96h", 225)
SER2A_96h_abbrev_pivot$MediaTime <- SER2A96h
SER2A <- rep("SE-R2A", 225)
SER2A_96h_abbrev_pivot$Media <- SER2A
Time96h <- rep("96h", 225)
SER2A_96h_abbrev_pivot$Time <- Time96h

SEandR2A_merged48 <- rbind(SER2A_48h_abbrev_pivot, R2A_48h_abbrev_pivot)
SEandR2A_mergedALL <- rbind(SER2A_48h_abbrev_pivot, R2A_48h_abbrev_pivot,
                            SER2A_96h_abbrev_pivot, R2A_96h_abbrev_pivot)




strain_order_names <- c('Pseudomonas_putida_KT2442', 'Pseudomonas_E5', 'Pseudomonas_RPE1',	'Pseudomonas_RP5',
                        'Pseudomonas_RDP22', 'Pseudomonas_RDP27',	
                        'Luteibacter_BM7',	'Lysobacter_BM12',	'Stenotrophomonas_BM25',
                        'Dyella_R23', 'Rhodanobacteraceae_S20', 'Enterobacter_RPA1',
                        'Variovax_RPC5', 'Burkholderia_BM21', 'Burkholderia_RCH25', 'Massilia_Z16', 'Massilia_MnBlack',
                        'Massilia_sp', 'Massilia_SH9', 'Ensifer_sp',
                        'Ensifer_BM17', 'Ensifer_E15', 'Ensifer_BM23', 'Agrobacterium_E4',
                        'Sphingobium_Z2', 'Novosphingobium_RCH3', 'Methylobacterium_RPE3',
                        'Chryseobacterium_SCH11', 'Dyadobacter_BM9', 'Hymenobacter_RP5H',
                        'Exiguobacterium_RDH20',	'Exiguobacterium_RDH25',	'Bacillus_SCH24', 
                        'Paenibacillus_E12','Paenibacillus_SH19',
                        'Streptomyces_RDH1',	'Streptomyces_RCH20P',	'Streptomyces_R1', 'Streptomyces_BM16',
                        'Cellulosimicrobium_BM1',	'Nocardioides_BM13', 'Micrococcus_SCH4',
                        'Microbacterium_BM4', 'Arthrobacter_RDH6',
                        'Pseudomonas_PAO1', 'Pseudomonas_Pf5')


# COlor code the strains by their phyla!
    # darkgreen = G-proteobacteria    darkseagreen4 = B-proteobacteria    
    # olivedrab = A-proteobacteria    purple4 = Bacteroidetes    
    # darkgoldenrod2 = Firmicutes     maroon = Actinobacteria


strain_name_colors_abbrev <- c("darkgreen", "darkseagreen4", "darkseagreen4", "darkseagreen4", 
                        "olivedrab", "olivedrab", "purple4", "purple4",
                        "purple4", "darkgoldenrod2", "darkgoldenrod2", "darkgoldenrod2", "maroon",
                        "maroon", "maroon")





ggplot(data = SEandR2A_mergedALL, aes(x=factor(Spot, level = strain_order_names),
                                       y=factor(Lawn, level =strain_order_names), fill=value) ) + 
  facet_grid(Time ~ Media, space = "free", scales = "free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on R2A and SE-R2A at 48h") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey70", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="bold.italic", color=strain_name_colors_abbrev),
        axis.text.y=element_text(face="bold.italic", size=9, color=strain_name_colors_abbrev),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=12, angle=0), 
        strip.text.y = element_text(face="bold", size=12, angle=270),
        panel.background = element_rect(fill="grey60"),
        panel.grid = element_blank()) 
+
  scale_x_discrete(expand = c(0.01, 0.01)) + scale_y_discrete(expand = c(0.01, 0.01))


















############################ Compare R2A to R2A + Fe ############################

#R2A data
R2A48 <- read.csv("Data_csvs/R2A_Rep1_48h_15strains_SH9-BM23names.csv", header = TRUE)
R2A48_pivot <- pivot_longer(R2A48, c(2:16), values_drop_na = FALSE)
R2A48_pivot$Lawn <- as.factor(R2A48_pivot$Strain_ID)
R2A48_pivot$Spot <- as.factor(R2A48_pivot$name)
R2A48_pivot$value <- as.numeric(R2A48_pivot$value)
R2A_48h <- rep("R2A-48h", 225)
R2A48_pivot$MediaTime <- R2A_48h
R2A <- rep("R2A", 225)
R2A48_pivot$Media <- R2A
R2A48_pivot$BaseMedia <- R2A
NoFe <- rep("-FeCl3", 225)
R2A48_pivot$FeSupp <- NoFe
Time48h_2 <- rep("48h", 225)
R2A48_pivot$Time <- Time48h_2


#R2A+Fe data
R2AFe48 <- read.csv("Data_csvs/R2A_Fe_96h-15strains.csv", header = TRUE, nrows=16)
R2AFe48_pivot <- pivot_longer(R2AFe48, c(2:16), values_drop_na = FALSE)
R2AFe48_pivot$Lawn <- as.factor(R2AFe48_pivot$Strain_ID)
R2AFe48_pivot$Spot <- as.factor(R2AFe48_pivot$name)
R2AFe48_pivot$value <- as.numeric(R2AFe48_pivot$value)
R2AFe_48h <- rep("R2A-Fe-48h", 225)
R2AFe48_pivot$MediaTime <- R2AFe_48h
R2AFe <- rep("R2A+Fe", 225)
R2AFe48_pivot$Media <- R2AFe
R2AFe48_pivot$BaseMedia <- R2A
SuppFe <- rep("+FeCl3", 225)
R2AFe48_pivot$FeSupp <- SuppFe
Time48h_2 <- rep("48h", 225)
R2AFe48_pivot$Time <- Time48h_2


#R2A 96h data
R2A96 <- read.csv("Data_csvs/R2A_Rep1_96h-15strains_SH9-BM23names.csv", header = TRUE)
R2A96_pivot <- pivot_longer(R2A96, c(2:16), values_drop_na = FALSE)
R2A96_pivot$Lawn <- as.factor(R2A96_pivot$Strain_ID)
R2A96_pivot$Spot <- as.factor(R2A96_pivot$name)
R2A96_pivot$value <- as.numeric(R2A96_pivot$value)
R2A_96h <- rep("R2A-96h", 225)
R2A96_pivot$MediaTime <- R2A_96h
R2A <- rep("R2A", 225)
R2A96_pivot$Media <- R2A
R2A96_pivot$BaseMedia <- R2A
NoFe <- rep("-FeCl3", 225)
R2A96_pivot$FeSupp <- NoFe
Time96h_2 <- rep("96h", 225)
R2A96_pivot$Time <- Time96h_2


#R2A+Fe 96h data
R2AFe96 <- read.csv("Data_csvs/R2A_Fe_96h-15strains.csv", header = TRUE, nrows=16)
R2AFe96_pivot <- pivot_longer(R2AFe96, c(2:16), values_drop_na = FALSE)
R2AFe96_pivot$Lawn <- as.factor(R2AFe96_pivot$Strain_ID)
R2AFe96_pivot$Spot <- as.factor(R2AFe96_pivot$name)
R2AFe96_pivot$value <- as.numeric(R2AFe96_pivot$value)
R2AFe_96h <- rep("R2A-Fe-96h", 225)
R2AFe96_pivot$MediaTime <- R2AFe_96h
R2AFe <- rep("R2A+Fe", 225)
R2AFe96_pivot$Media <- R2AFe
R2AFe96_pivot$BaseMedia <- R2A
SuppFe <- rep("+FeCl3", 225)
R2AFe96_pivot$FeSupp <- SuppFe
Time96h_2 <- rep("96h", 225)
R2AFe96_pivot$Time <- Time96h_2


R2A_Fe_48and96 <- rbind(R2AFe96_pivot, R2A96_pivot, R2AFe48_pivot, R2A48_pivot)

# COlor code the strains by their phyla!
# darkgreen = G-proteobacteria    darkseagreen4 = B-proteobacteria    
# olivedrab = A-proteobacteria    purple4 = Bacteroidetes    
# darkgoldenrod2 = Firmicutes     maroon = Actinobacteria


strain_name_colors_abbrev2 <- c("darkgreen", "darkseagreen4", "darkseagreen4", "darkseagreen4", 
                               "olivedrab", "olivedrab", "olivedrab", "purple4", "purple4",
                               "purple4", "darkgoldenrod2", "darkgoldenrod2", "darkgoldenrod2", "maroon",
                               "maroon", "maroon")

ggplot(data = R2A_Fe_48and96, aes(x=factor(Spot, level = strain_order_names),
                                      y=factor(Lawn, level =strain_order_names), fill=value) ) + 
  facet_grid(Time ~ Media, space = "free", scales = "free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on R2A and R2A+Fe at 48h and 96h") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey70", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="bold.italic"),
        axis.text.y=element_text(face="bold.italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=12, angle=0), 
        strip.text.y = element_text(face="bold", size=12, angle=270),
        panel.background = element_rect(fill="grey60"),
        panel.grid = element_blank()) 
+
  scale_x_discrete(expand = c(0.01, 0.01)) + scale_y_discrete(expand = c(0.01, 0.01))
