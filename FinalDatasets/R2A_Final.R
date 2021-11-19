############################### Final R2A Dataset Heatmaps ####################################



setwd("~/Desktop/InhibitoryAssays")
library(tidyverse)



# R2A data 48h 
R2A_48h <- read.csv("FinalDatasets/R2A_48h_Rep1_FINAL.csv", header = TRUE, nrows = 32)
R2A_48h$Strain_ID <- as.character(R2A_48h$Strain_ID)
R2A_48h_pivot <- pivot_longer(R2A_48h, c(2:33), values_drop_na = FALSE)
R2A_48h_pivot$Lawn <- as.factor(R2A_48h_pivot$Strain_ID)
R2A_48h_pivot$Spot <- as.factor(R2A_48h_pivot$name)
R2A_48h_pivot$value <- as.numeric(R2A_48h_pivot$value)
R2A48h <- rep("R2A-48h", 1024)
R2A_48h_pivot$MediaTime <- R2A48h
R2A <- rep("R2A", 1024)
R2A_48h_pivot$Media <- R2A
Time48h <- rep("48h", 1024)
R2A_48h_pivot$Time <- Time48h






# R2A data 96h 
R2A_96h <- read.csv("FinalDatasets/R2A_96h_Rep1_FINAL.csv", header = TRUE, nrows = 32)
R2A_96h$Strain_ID <- as.character(R2A_96h$Strain_ID)
R2A_96h_pivot <- pivot_longer(R2A_96h, c(2:33), values_drop_na = FALSE)
R2A_96h_pivot$Lawn <- as.factor(R2A_96h_pivot$Strain_ID)
R2A_96h_pivot$Spot <- as.factor(R2A_96h_pivot$name)
R2A_96h_pivot$value <- as.numeric(R2A_96h_pivot$value)
R2A96h <- rep("R2A-96h", 1024)
R2A_96h_pivot$MediaTime <- R2A96h
R2A <- rep("R2A", 1024)
R2A_96h_pivot$Media <- R2A
Time96h <- rep("96h", 1024)
R2A_96h_pivot$Time <- Time96h






# R2A + Fe data 48h 
R2A_Fe_48h <- read.csv("FinalDatasets/R2A_Fe_48h_Rep1_FINAL.csv", header = TRUE, nrows = 32)
R2A_Fe_48h$Strain_ID <- as.character(R2A_Fe_48h$Strain_ID)
R2A_Fe_48h_pivot <- pivot_longer(R2A_Fe_48h, c(2:33), values_drop_na = FALSE)
R2A_Fe_48h_pivot$Lawn <- as.factor(R2A_Fe_48h_pivot$Strain_ID)
R2A_Fe_48h_pivot$Spot <- as.factor(R2A_Fe_48h_pivot$name)
R2A_Fe_48h_pivot$value <- as.numeric(R2A_Fe_48h_pivot$value)
R2AFe48h <- rep("R2AFe-48h", 1024)
R2A_Fe_48h_pivot$MediaTime <- R2AFe48h
R2AFe <- rep("R2A+Fe", 1024)
R2A_Fe_48h_pivot$Media <- R2AFe
Time48h <- rep("48h", 1024)
R2A_Fe_48h_pivot$Time <- Time48h






# R2A + Fe data 96h 
R2A_Fe_96h <- read.csv("FinalDatasets/R2A_Fe_96h_Rep1_FINAL.csv", header = TRUE, nrows = 32)
R2A_Fe_96h$Strain_ID <- as.character(R2A_Fe_96h$Strain_ID)
R2A_Fe_96h_pivot <- pivot_longer(R2A_Fe_96h, c(2:33), values_drop_na = FALSE)
R2A_Fe_96h_pivot$Lawn <- as.factor(R2A_Fe_96h_pivot$Strain_ID)
R2A_Fe_96h_pivot$Spot <- as.factor(R2A_Fe_96h_pivot$name)
R2A_Fe_96h_pivot$value <- as.numeric(R2A_Fe_96h_pivot$value)
R2AFe96h <- rep("R2AFe-96h", 1024)
R2A_Fe_96h_pivot$MediaTime <- R2AFe96h
R2AFe <- rep("R2A+Fe", 1024)
R2A_Fe_96h_pivot$Media <- R2AFe
Time96h <- rep("96h", 1024)
R2A_Fe_96h_pivot$Time <- Time96h







R2A_ALL <- rbind(R2A_48h_pivot, R2A_96h_pivot, R2A_Fe_48h_pivot, R2A_Fe_96h_pivot)





















strain_order_names <- c('Pseudomonas_putida_KT2442', 'Pseudomonas_E05', 'Luteibacter_E22',
  'Lysobacter_E23', 'Stenotrophomonas_R24', 'Dyella_R26', 'Enterobacter_R25', 
  'Variovorax_R27', 'Acidovorax_R28', 'Massilia_S14', 'Massilia_R31', 'Ralstonia_R29', 'Burkholderia_R30',
  'Ensifer_E15', 'Ensifer_R19', 'Agrobacterium_E04', 'Methylobacterium_R20', 'Sphingobium_R21',
  'Hymenobacter_R03', 'Dyadobacter_E01', 'Chryseobacterium_S02', 'Pedobacter_R06', 
  'Exiguobacterium_R17', 'Bacillus_S18', 'Paenibacillus_E12', 'Nocardioides_E09', 
  'Cellulosimicrobium_E16', 'Micrococcus_S10', 'Microbacterium_E13', 'Arthrobacter_R11',
  'Streptomyces_R07', 'Streptomyces_E08')



# COlor code the strains by their phyla!
# darkgreen = G-proteobacteria    darkseagreen4 = B-proteobacteria    
# olivedrab = A-proteobacteria    purple4 = Bacteroidetes    
# darkgoldenrod2 = Firmicutes     maroon = Actinobacteria


strain_name_colors <- c("darkorange4", "darkorange4", "darkorange4", "darkorange4", 
                        "darkorange4", "darkorange4", "darkorange4", 
                        "darkblue", "darkblue", "darkblue", "darkblue", "darkblue", "darkblue", 
                        "darkgreen", "darkgreen",
                        "darkgreen", "darkgreen", "darkgreen", "purple4", "purple4",
                        "purple4", "purple4",
                        "darkgoldenrod3", "darkgoldenrod3", "darkgoldenrod3", "darkred",
                        "darkred", "darkred", "darkred", "darkred", "darkred", "darkred")







ggplot(data = R2A_ALL, aes(x=factor(Spot, level = strain_order_names),
                                 y=factor(Lawn, level = strain_order_names), fill=value) ) + 
  facet_grid(Time ~ Media) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on R2A") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey70", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=8, angle = 45, vjust = 1, hjust = 1, face="italic", color=strain_name_colors),
        axis.text.y=element_text(face="italic", size=8, color=strain_name_colors),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=9, angle=0), 
        strip.text.y = element_text(face="bold", size=10, angle=0),
        panel.background = element_rect(fill="grey60"),
        panel.grid = element_blank()) 




# ???????????????????????????????

ggplot(data = R2A_ALL, aes(x=Media,
                           y=Time, fill=value) ) + 
  facet_grid(factor(Lawn, level =strain_order_names) ~ factor(Spot, level =strain_order_names)) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on R2A") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey70", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=8, angle = 45, vjust = 1, hjust = 1, face="italic", color=strain_name_colors),
        axis.text.y=element_text(face="italic", size=8, color=strain_name_colors),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=9, angle=0), 
        strip.text.y = element_text(face="bold", size=10, angle=0),
        panel.background = element_rect(fill="grey60"),
        panel.grid = element_blank()) 



########################## SUBSETTING DATASET #####################

ggplot(subset(dat,ID %in% c("P1" , "P3")))


GammaProteo_names <- c('Pseudomonas_putida_KT2442', 'Pseudomonas_E05', 'Luteibacter_E22',
                       'Lysobacter_E23', 'Stenotrophomonas_R24', 'Dyella_R26', 'Enterobacter_R25')

Pseudomonads <- c('Pseudomonas_putida_KT2442', 'Pseudomonas_E05')

BetaProteo_names <- c('Variovorax_R27', 'Acidovorax_R28', 'Massilia_S14', 'Massilia_R31', 
                      'Ralstonia_R29', 'Burkholderia_R30')

AlphaProteo_names <- c('Ensifer_E15', 'Ensifer_R19', 'Agrobacterium_E04', 
                       'Methylobacterium_R20', 'Sphingobium_R21')

Actinos_names <- c('Nocardioides_E09', 'Cellulosimicrobium_E16', 'Micrococcus_S10', 'Microbacterium_E13', 
                   'Arthrobacter_R11', 'Streptomyces_R07', 'Streptomyces_E08')

Bacteroidetes_names <- c('Hymenobacter_R03', 'Dyadobacter_E01', 'Chryseobacterium_S02', 'Pedobacter_R06')
  
Firmicutes_names <- c('Exiguobacterium_R17', 'Bacillus_S18', 'Paenibacillus_E12')



ggplot(subset(R2A_ALL, Spot %in% c('Pseudomonas_E05')), aes(x=factor(Spot, level = strain_order_names),
                           y=factor(Lawn, level =strain_order_names), fill=value) ) + 
  facet_grid(Time ~ Media) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on R2A") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey70", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=8, angle = 45, vjust = 1, hjust = 1, face="italic", color=strain_name_colors),
        axis.text.y=element_text(face="italic", size=8, color=strain_name_colors),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=9, angle=0), 
        strip.text.y = element_text(face="bold", size=10, angle=0),
        panel.background = element_rect(fill="grey60"),
        panel.grid = element_blank()) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))













################ ################ Exporting for Cytoscape ################ ################ 
R2A_48h_Cyto <- read.csv("Data_csvs/R2A_Rep1_48h_forCytoscape_TEST2.csv", header = TRUE, nrows = 32)
R2A_48h_Cyto$Strain_ID <- as.character(R2A_48h_Cyto$Strain_ID)
R2A_48h_Cyto_pivot <- pivot_longer(R2A_48h_Cyto, c(2:33), values_drop_na = FALSE)
R2A_48h_Cyto_pivot$Target <- as.factor(R2A_48h_Cyto_pivot$Strain_ID)
R2A_48h_Cyto_pivot$Source <- as.factor(R2A_48h_Cyto_pivot$name)
R2A_48h_Cyto_pivot$Interaction <- as.numeric(R2A_48h_Cyto_pivot$value)
write_csv(R2A_48h_Cyto_pivot, "R2A_48h_Cyto_pivot.csv")



R2A_48h_Cyto_pivot$Target <- as.factor(R2A_48h_Cyto_pivot$Strain_ID)
R2A_48h_Cyto_pivot$Source <- as.factor(R2A_48h_Cyto_pivot$name)
R2A_48h_Cyto_pivot$Interaction <- as.numeric(R2A_48h_Cyto_pivot$value)
write_csv(R2A_48h_Cyto_pivot, "R2A_48h_Cyto_pivot.csv")


############### changing names from R2A_ALL to just strain ID's
R2A_StrainID_Target_Key <- read.csv("FinalDatasets/Straind_ID_to_Target.csv", header = TRUE, nrows = 32)
R2A_name_Source_Key <- read.csv("FinalDatasets/name_to_source.csv", header = TRUE, nrows = 32)

R2A_ALL_strainIDrenamed <- merge(R2A_ALL, R2A_StrainID_Target_Key, by.x="Strain_ID", by.y="Strain_ID")
R2A_ALL_TargetandSourceRenamed <- merge(R2A_ALL_strainIDrenamed, R2A_name_Source_Key, by.x="name", by.y="name")

R2A_ALL_TargetandSourceRenamed$Interaction <- as.numeric(R2A_ALL_TargetandSourceRenamed$value)
write_csv(R2A_ALL_TargetandSourceRenamed, "R2A_ALL_forCytoscape_UpdatedNames.csv")




R2A_HalfTSA_ALL <- rbind(R2A_ALL_TargetandSourceRenamed, HalfTSA_ALL_TargetandSourceRenamed)
R2A_HalfTSA_ALL$SourceMediaTime <- paste(R2A_HalfTSA_ALL$Source, R2A_HalfTSA_ALL$MediaTime, sep= "_")
R2A_HalfTSA_ALL$TargetMediaTime <- paste(R2A_HalfTSA_ALL$Target, R2A_HalfTSA_ALL$MediaTime, sep= "_")
write_csv(R2A_HalfTSA_ALL, "ALL_forCytoscape_UpdatedNames_2.csv")

