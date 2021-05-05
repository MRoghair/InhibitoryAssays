
setwd("~/Desktop/InhibitoryAssayGraphing")
library(tidyverse)


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


#Full-strength TSA data
FullTSAabbrev <- read.csv("TSA_abbrev.csv", header = TRUE)
FullTSAabbrev_pivot <- pivot_longer(FullTSAabbrev, c(2:9), values_drop_na = FALSE)
FullTSAabbrev_pivot$Lawn <- as.factor(FullTSAabbrev_pivot$Strain_ID)
FullTSAabbrev_pivot$Spot <- as.factor(FullTSAabbrev_pivot$name)
FullTSAabbrev_pivot$value <- as.numeric(FullTSAabbrev_pivot$value)
FullTSA48h <- rep("FullTSA-48h", 64)
FullTSAabbrev_pivot$MediaTime <- FullTSA48h
FullTSA <- rep("FullTSA", 64)
FullTSAabbrev_pivot$Media <- FullTSA
Time48h <- rep("48h", 64)
FullTSAabbrev_pivot$Time <- Time48h


#Half-strength TSA data
HalfTSA48abbrev <- read.csv("HalfTSA-48h-abbrev.csv", header = TRUE)
HalfTSA48abbrev_pivot <- pivot_longer(HalfTSA48abbrev, c(2:9), values_drop_na = FALSE)
HalfTSA48abbrev_pivot$Lawn <- as.factor(HalfTSA48abbrev_pivot$Strain_ID)
HalfTSA48abbrev_pivot$Spot <- as.factor(HalfTSA48abbrev_pivot$name)
HalfTSA48abbrev_pivot$value <- as.numeric(HalfTSA48abbrev_pivot$value)
HalfTSA48h <- rep("HalfTSA-48h", 64)
HalfTSA48abbrev_pivot$MediaTime <- HalfTSA48h
HalfTSA <- rep("HalfTSA", 64)
HalfTSA48abbrev_pivot$Media <- HalfTSA
HalfTSA48abbrev_pivot$Time <- Time48h


#Half-strength TSA data - 96h
HalfTSA96abbrev <- read.csv("HalfTSA-96h-abbrev.csv", header = TRUE)
HalfTSA96abbrev_pivot <- pivot_longer(HalfTSA96abbrev, c(2:9), values_drop_na = FALSE)
HalfTSA96abbrev_pivot$Lawn <- as.factor(HalfTSA96abbrev_pivot$Strain_ID)
HalfTSA96abbrev_pivot$Spot <- as.factor(HalfTSA96abbrev_pivot$name)
HalfTSA96abbrev_pivot$value <- as.numeric(HalfTSA96abbrev_pivot$value)
HalfTSA96h <- rep("HalfTSA-96", 64)
HalfTSA96abbrev_pivot$MediaTime <- HalfTSA96h
Time96h <- rep("96h", 64)
HalfTSA96abbrev_pivot$Media <- HalfTSA
HalfTSA96abbrev_pivot$Time <- Time96h


#One-tenth-strength TSA data
TenthTSA48abbrev <- read.csv("TenthTSA-48h-abbrev.csv", header = TRUE, nrows=8)
TenthTSA48abbrev_pivot <- pivot_longer(TenthTSA48abbrev, c(2:9), values_drop_na = FALSE)
TenthTSA48abbrev_pivot$Lawn <- as.factor(TenthTSA48abbrev_pivot$Strain_ID)
TenthTSA48abbrev_pivot$Spot <- as.factor(TenthTSA48abbrev_pivot$name)
TenthTSA48abbrev_pivot$value <- as.numeric(TenthTSA48abbrev_pivot$value)
TenthTSA48h <- rep("TenthTSA-48h", 64)
TenthTSA <- rep("TenthTSA", 64)
TenthTSA48abbrev_pivot$Media <- TenthTSA
TenthTSA48abbrev_pivot$MediaTime <- TenthTSA48h
TenthTSA48abbrev_pivot$Time <- Time48h


#One-tenth-strength TSA data
TenthTSA96abbrev <- read.csv("TenthTSA-96h-abbrev.csv", header = TRUE, nrows=8)
TenthTSA96abbrev_pivot <- pivot_longer(TenthTSA96abbrev, c(2:9), values_drop_na = FALSE)
TenthTSA96abbrev_pivot$Lawn <- as.factor(TenthTSA96abbrev_pivot$Strain_ID)
TenthTSA96abbrev_pivot$Spot <- as.factor(TenthTSA96abbrev_pivot$name)
TenthTSA96abbrev_pivot$value <- as.numeric(TenthTSA96abbrev_pivot$value)
TenthTSA96h <- rep("TenthTSA-96", 64)
TenthTSA96abbrev_pivot$MediaTime <- TenthTSA96h
TenthTSA96abbrev_pivot$Media <- TenthTSA
TenthTSA96abbrev_pivot$Time <- Time96h

# NA data 48h 
NA50_48h <- read.csv("50NA_abbrev.csv", header = TRUE)
NA50_48h_pivot <- pivot_longer(NA50_48h, c(2:9), values_drop_na = FALSE)
NA50_48h_pivot$Lawn <- as.factor(NA50_48h_pivot$Strain_ID)
NA50_48h_pivot$Spot <- as.factor(NA50_48h_pivot$name)
NA50_48h_pivot$value <- as.numeric(NA50_48h_pivot$value)
HalfNA_48h <- rep("HalfNA-48h", 64)
NA50_48h_pivot$MediaTime <- HalfNA_48h
HalfNA <- rep("HalfNA", 64)
NA50_48h_pivot$Media <- HalfNA
Time48h <- rep("48h", 64)
NA50_48h_pivot$Time <- Time48h


# NA data 96h
NA50_96h <- read.csv("50NA_abbrev_96h.csv", header = TRUE)
NA50_96h_pivot <- pivot_longer(NA50_96h, c(2:9), values_drop_na = FALSE)
NA50_96h_pivot$Lawn <- as.factor(NA50_96h_pivot$Strain_ID)
NA50_96h_pivot$Spot <- as.factor(NA50_96h_pivot$name)
NA50_96h_pivot$value <- as.numeric(NA50_96h_pivot$value)
HalfNA_96h <- rep("HalfNA-96h", 64)
NA50_96h_pivot$MediaTime <- HalfNA_96h
HalfNA <- rep("HalfNA", 64)
NA50_96h_pivot$Media <- HalfNA
Time96h_2 <- rep("96h", 64)
NA50_96h_pivot$Time <- Time96h_2


# R2A data 48h
R2A_48h <- read.csv("R2A_abbrev.csv", header = TRUE)
R2Aabbrev48_pivot <- pivot_longer(R2A_48h, c(2:9), values_drop_na = FALSE)
R2Aabbrev48_pivot$Lawn <- as.factor(R2Aabbrev48_pivot$Strain_ID)
R2Aabbrev48_pivot$Spot <- as.factor(R2Aabbrev48_pivot$name)
R2Aabbrev48_pivot$value <- as.numeric(R2Aabbrev48_pivot$value)
R2A48h <- rep("R2A-48h", 64)
R2Aabbrev48_pivot$MediaTime <- R2A48h
R2A <- rep("R2A", 64)
R2Aabbrev48_pivot$Media <- R2A
Time48h <- rep("48h", 64)
R2Aabbrev48_pivot$Time <- Time48h


# R2A data 96h
R2A_96h <- read.csv("R2A_abbrev_96h.csv", header = TRUE)
R2Aabbrev96_pivot <- pivot_longer(R2A_96h, c(2:9), values_drop_na = FALSE)
R2Aabbrev96_pivot$Lawn <- as.factor(R2Aabbrev96_pivot$Strain_ID)
R2Aabbrev96_pivot$Spot <- as.factor(R2Aabbrev96_pivot$name)
R2Aabbrev96_pivot$value <- as.numeric(R2Aabbrev96_pivot$value)
R2A96h <- rep("R2A-96h", 64)
R2Aabbrev96_pivot$MediaTime <- R2A96h
R2A <- rep("R2A", 64)
R2Aabbrev96_pivot$Media <- R2A
Time96h <- rep("96h", 64)
R2Aabbrev96_pivot$Time <- Time96h

# R2A data 48h
KB_48h <- read.csv("KB_abbrev_48h.csv", header = TRUE)
KBabbrev48_pivot <- pivot_longer(KB_48h, c(2:9), values_drop_na = FALSE)
KBabbrev48_pivot$Lawn <- as.factor(KBabbrev48_pivot$Strain_ID)
KBabbrev48_pivot$Spot <- as.factor(KBabbrev48_pivot$name)
KBabbrev48_pivot$value <- as.numeric(KBabbrev48_pivot$value)
KB48h <- rep("KB-48h", 64)
KBabbrev48_pivot$MediaTime <- KB48h
KB <- rep("KB", 64)
KBabbrev48_pivot$Media <- KB
Time48h <- rep("48h", 64)
KBabbrev48_pivot$Time <- Time48h


Merged_ALL_abbrev <- rbind(NA50_48h_pivot, NA50_96h_pivot, R2Aabbrev48_pivot,
                           R2Aabbrev96_pivot, FullTSAabbrev_pivot, KBabbrev48_pivot,
                           HalfTSA48abbrev_pivot, HalfTSA96abbrev_pivot, 
                           TenthTSA48abbrev_pivot, TenthTSA96abbrev_pivot)


# This command puts the media types in order
Merged_ALL_abbrev$Media.f = factor(Merged_ALL_abbrev$Media, 
                            levels=c('KB','FullTSA','HalfTSA','HalfNA', 'R2A', 'TenthTSA'))



ggplot(data = Merged_ALL_abbrev, aes(x=factor(Spot, level = strain_order),
                                     y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(Time ~ Media.f) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions over time on various media") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        panel.grid.major=element_blank(), panel.grid.minor=element_blank(),
        strip.text = element_text(face="bold", size=12), 
        panel.background = element_rect(fill="grey"), 
        plot.background = element_rect(fill="white")) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))













# other stuff

Merged_ALL_abbrev <- rbind(NA50_48h_pivot, NA50_96h_pivot, FullTSAabbrev_pivot, 
                           HalfTSA48abbrev_pivot, HalfTSA96abbrev_pivot, 
                           TenthTSA48abbrev_pivot, TenthTSA96abbrev_pivot)
Merged_ALL$Lawn2 <- as.factor(Merged_ALL$Lawn)
Merged_ALL <- mutate_if(Merged_ALL, is.character,
                        str_replace_all, pattern = "Massilia_Z16", replacement = "Massilia_sp")
Merged_ALL$Lawn2 <- mutate_if(Merged_ALL$Lawn2, is.character,
                              str_replace_all, pattern = "Massilia_MnBlack", replacement = "Massilia_sp")
Merged_ALL$Lawn2 <- as.factor(Merged_ALL$Lawn)
Merged_ALL <- mutate_if(Merged_ALL, is.character,
                        str_replace_all, pattern = "Massilia_Z16", replacement = "Massilia_sp")
Merged_ALL$Lawn2 <- mutate_if(Merged_ALL$Lawn2, is.character,
                              str_replace_all, pattern = "Massilia_MnBlack", replacement = "Massilia_sp")
Merged_ALL$Lawn2[ Merged_ALL$Lawn2 == "Massilia_Z16"] = "Massilia"
Merged_ALL$Strain_ID2[ Merged_ALL$Strain_ID == "Massilia_MnBlack"] = "Massilia_sp"



