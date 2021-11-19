#### Reproducibility 

setwd("~/Desktop/InhibitoryAssays")
library(tidyverse)


HB_HalfTSA_48h <- read.csv("HannahComparisons/HB_HalfTSA_48h.csv", header = TRUE)
HB_HalfTSA_48h_pivot <- pivot_longer(HB_HalfTSA_48h, c(2:16), values_drop_na = FALSE)
HB_HalfTSA_48h_pivot$Lawn <- as.factor(HB_HalfTSA_48h_pivot$Strain.ID)
HB_HalfTSA_48h_pivot$Spot <- as.factor(HB_HalfTSA_48h_pivot$name)
HB_HalfTSA_48h_pivot$value <- as.numeric(HB_HalfTSA_48h_pivot$value)
HalfTSA48h <- rep("1/2 TSA, 48h", 225)
HB_HalfTSA_48h_pivot$MediaTime <- HalfTSA48h
HalfTSA <- rep("1/2 TSA", 225)
HB_HalfTSA_48h_pivot$Media <- HalfTSA
NOSuppFe <- rep("- FeCl3", 225)
HB_HalfTSA_48h_pivot$Fe <- NOSuppFe
Time48h <- rep("48h", 225)
HB_HalfTSA_48h_pivot$Time <- Time48h
Hannah <- rep("Hannah", 225)
HB_HalfTSA_48h_pivot$Dataset <- Hannah
names(HB_HalfTSA_48h_pivot)[names(HB_HalfTSA_48h_pivot) == "Strain.ID"] <- "Strain_ID"

HB_HalfTSA_96h <- read.csv("HannahComparisons/HB_HalfTSA_96h.csv", header = TRUE)
HB_HalfTSA_96h_pivot <- pivot_longer(HB_HalfTSA_96h, c(2:16), values_drop_na = FALSE)
HB_HalfTSA_96h_pivot$Lawn <- as.factor(HB_HalfTSA_96h_pivot$Strain.ID)
HB_HalfTSA_96h_pivot$Spot <- as.factor(HB_HalfTSA_96h_pivot$name)
HB_HalfTSA_96h_pivot$value <- as.numeric(HB_HalfTSA_96h_pivot$value)
HalfTSA96h <- rep("1/2 TSA, 96h", 225)
HB_HalfTSA_96h_pivot$MediaTime <- HalfTSA96h
HalfTSA <- rep("1/2 TSA", 225)
HB_HalfTSA_96h_pivot$Media <- HalfTSA
NOSuppFe <- rep("- FeCl3", 225)
HB_HalfTSA_96h_pivot$Fe <- NOSuppFe
Time96h <- rep("96h", 225)
HB_HalfTSA_96h_pivot$Time <- Time96h
Hannah <- rep("Hannah", 225)
HB_HalfTSA_96h_pivot$Dataset <- Hannah
names(HB_HalfTSA_96h_pivot)[names(HB_HalfTSA_96h_pivot) == "Strain.ID"] <- "Strain_ID"


HB_HalfTSA_Fe_48h <- read.csv("HannahComparisons/HB_HalfTSA_Fe_48h.csv", header = TRUE)
HB_HalfTSA_Fe_48h_pivot <- pivot_longer(HB_HalfTSA_Fe_48h, c(2:16), values_drop_na = FALSE)
HB_HalfTSA_Fe_48h_pivot$Lawn <- as.factor(HB_HalfTSA_Fe_48h_pivot$Strain.ID)
HB_HalfTSA_Fe_48h_pivot$Spot <- as.factor(HB_HalfTSA_Fe_48h_pivot$name)
HB_HalfTSA_Fe_48h_pivot$value <- as.numeric(HB_HalfTSA_Fe_48h_pivot$value)
HalfTSA48h <- rep("1/2 TSA + Fe, 48h", 225)
HB_HalfTSA_Fe_48h_pivot$MediaTime <- HalfTSA48h
HalfTSA <- rep("1/2 TSA", 225)
HB_HalfTSA_Fe_48h_pivot$Media <- HalfTSA
SuppFe <- rep("+ FeCl3", 225)
HB_HalfTSA_Fe_48h_pivot$Fe <- SuppFe
Time48h <- rep("48h", 225)
HB_HalfTSA_Fe_48h_pivot$Time <- Time48h
Hannah <- rep("Hannah", 225)
HB_HalfTSA_Fe_48h_pivot$Dataset <- Hannah
names(HB_HalfTSA_Fe_48h_pivot)[names(HB_HalfTSA_Fe_48h_pivot) == "Strain.ID"] <- "Strain_ID"


HB_HalfTSA_Fe_96h <- read.csv("HannahComparisons/HB_HalfTSA_Fe_96h.csv", header = TRUE)
HB_HalfTSA_Fe_96h_pivot <- pivot_longer(HB_HalfTSA_Fe_96h, c(2:16), values_drop_na = FALSE)
HB_HalfTSA_Fe_96h_pivot$Lawn <- as.factor(HB_HalfTSA_Fe_96h_pivot$Strain.ID)
HB_HalfTSA_Fe_96h_pivot$Spot <- as.factor(HB_HalfTSA_Fe_96h_pivot$name)
HB_HalfTSA_Fe_96h_pivot$value <- as.numeric(HB_HalfTSA_Fe_96h_pivot$value)
HalfTSA96h <- rep("1/2 TSA + Fe, 96h", 225)
HB_HalfTSA_Fe_96h_pivot$MediaTime <- HalfTSA96h
HalfTSA <- rep("1/2 TSA", 225)
HB_HalfTSA_Fe_96h_pivot$Media <- HalfTSA
SuppFe <- rep("+ FeCl3", 225)
HB_HalfTSA_Fe_96h_pivot$Fe <- SuppFe
Time96h <- rep("96h", 225)
HB_HalfTSA_Fe_96h_pivot$Time <- Time96h
Hannah <- rep("Hannah", 225)
HB_HalfTSA_Fe_96h_pivot$Dataset <- Hannah
names(HB_HalfTSA_Fe_96h_pivot)[names(HB_HalfTSA_Fe_96h_pivot) == "Strain.ID"] <- "Strain_ID"




MRS_HalfTSA_48h <- read.csv("HannahComparisons/HalfTSA-48h.csv", header = TRUE)
MRS_HalfTSA_48h_pivot <- pivot_longer(MRS_HalfTSA_48h, c(2:16), values_drop_na = FALSE)
MRS_HalfTSA_48h_pivot$Lawn <- as.factor(MRS_HalfTSA_48h_pivot$Strain_ID)
MRS_HalfTSA_48h_pivot$Spot <- as.factor(MRS_HalfTSA_48h_pivot$name)
MRS_HalfTSA_48h_pivot$value <- as.numeric(MRS_HalfTSA_48h_pivot$value)
HalfTSA48h <- rep("1/2 TSA, 48h", 225)
MRS_HalfTSA_48h_pivot$MediaTime <- HalfTSA48h
HalfTSA <- rep("1/2 TSA", 225)
MRS_HalfTSA_48h_pivot$Media <- HalfTSA
NOSuppFe <- rep("- FeCl3", 225)
MRS_HalfTSA_48h_pivot$Fe <- NOSuppFe
Time48h <- rep("48h", 225)
MRS_HalfTSA_48h_pivot$Time <- Time48h
Marissa <- rep("Marissa", 225)
MRS_HalfTSA_48h_pivot$Dataset <- Marissa


MRS_HalfTSA_96h <- read.csv("HannahComparisons/HalfTSA-96h.csv", header = TRUE)
MRS_HalfTSA_96h_pivot <- pivot_longer(MRS_HalfTSA_96h, c(2:16), values_drop_na = FALSE)
MRS_HalfTSA_96h_pivot$Lawn <- as.factor(MRS_HalfTSA_96h_pivot$Strain_ID)
MRS_HalfTSA_96h_pivot$Spot <- as.factor(MRS_HalfTSA_96h_pivot$name)
MRS_HalfTSA_96h_pivot$value <- as.numeric(MRS_HalfTSA_96h_pivot$value)
HalfTSA96h <- rep("1/2 TSA, 96h", 225)
MRS_HalfTSA_96h_pivot$MediaTime <- HalfTSA96h
HalfTSA <- rep("1/2 TSA", 225)
MRS_HalfTSA_96h_pivot$Media <- HalfTSA
NOSuppFe <- rep("- FeCl3", 225)
MRS_HalfTSA_96h_pivot$Fe <- NOSuppFe
Time96h <- rep("96h", 225)
MRS_HalfTSA_96h_pivot$Time <- Time96h
Marissa <- rep("Marissa", 225)
MRS_HalfTSA_96h_pivot$Dataset <- Marissa


MRS_HalfTSA_Fe_48h <- read.csv("HannahComparisons/HalfTSA_35Fe-48h.csv", header = TRUE)
MRS_HalfTSA_Fe_48h_pivot <- pivot_longer(MRS_HalfTSA_Fe_48h, c(2:16), values_drop_na = FALSE)
MRS_HalfTSA_Fe_48h_pivot$Lawn <- as.factor(MRS_HalfTSA_Fe_48h_pivot$Strain_ID)
MRS_HalfTSA_Fe_48h_pivot$Spot <- as.factor(MRS_HalfTSA_Fe_48h_pivot$name)
MRS_HalfTSA_Fe_48h_pivot$value <- as.numeric(MRS_HalfTSA_Fe_48h_pivot$value)
HalfTSA48h <- rep("1/2 TSA + Fe, 48h", 225)
MRS_HalfTSA_Fe_48h_pivot$MediaTime <- HalfTSA48h
HalfTSA <- rep("1/2 TSA", 225)
MRS_HalfTSA_Fe_48h_pivot$Media <- HalfTSA
SuppFe <- rep("+ FeCl3", 225)
MRS_HalfTSA_Fe_48h_pivot$Fe <- SuppFe
Time48h <- rep("48h", 225)
MRS_HalfTSA_Fe_48h_pivot$Time <- Time48h
Marissa <- rep("Marissa", 225)
MRS_HalfTSA_Fe_48h_pivot$Dataset <- Marissa


MRS_HalfTSA_Fe_96h <- read.csv("HannahComparisons/HalfTSA_35Fe-96h.csv", header = TRUE)
MRS_HalfTSA_Fe_96h_pivot <- pivot_longer(MRS_HalfTSA_Fe_96h, c(2:16), values_drop_na = FALSE)
MRS_HalfTSA_Fe_96h_pivot$Lawn <- as.factor(MRS_HalfTSA_Fe_96h_pivot$Strain_ID)
MRS_HalfTSA_Fe_96h_pivot$Spot <- as.factor(MRS_HalfTSA_Fe_96h_pivot$name)
MRS_HalfTSA_Fe_96h_pivot$value <- as.numeric(MRS_HalfTSA_Fe_96h_pivot$value)
HalfTSA96h <- rep("1/2 TSA + Fe, 96h", 225)
MRS_HalfTSA_Fe_96h_pivot$MediaTime <- HalfTSA96h
HalfTSA <- rep("1/2 TSA", 225)
MRS_HalfTSA_Fe_96h_pivot$Media <- HalfTSA
SuppFe <- rep("+ FeCl3", 225)
MRS_HalfTSA_Fe_96h_pivot$Fe <- SuppFe
Time96h <- rep("96h", 225)
MRS_HalfTSA_Fe_96h_pivot$Time <- Time96h
Marissa <- rep("Marissa", 225)
MRS_HalfTSA_Fe_96h_pivot$Dataset <- Marissa



########################## Write out csvs for all files ########################## 

write.csv(HB_HalfTSA_48h_pivot, file = "HannahComparisons/HB_HalfTSA_48h_pivot.csv")
write.csv(HB_HalfTSA_96h_pivot, file = "HannahComparisons/HB_HalfTSA_96h_pivot.csv")

HB_HalfTSA_Fe_48h <- read.csv("HannahComparisons/HalfTSA_Fe_48h_FINAL_abbrev.csv", header = TRUE)
HB_HalfTSA_Fe_48h_pivot <- pivot_longer(HB_HalfTSA_Fe_48h, c(2:16), values_drop_na = FALSE)
write.csv(HB_HalfTSA_Fe_48h_pivot, file = "HannahComparisons/HB_HalfTSA_Fe_48h_pivot_abbrev.csv")
HB_HalfTSA_Fe_96h <- read.csv("HannahComparisons/HalfTSA_Fe_96h_FINAL_abbrev.csv", header = TRUE)
HB_HalfTSA_Fe_96h_pivot <- pivot_longer(HB_HalfTSA_Fe_96h, c(2:16), values_drop_na = FALSE)
write.csv(HB_HalfTSA_Fe_96h_pivot, file = "HannahComparisons/HB_HalfTSA_Fe_96h_pivot_abbrev.csv")

write.csv(MRS_HalfTSA_48h_pivot, file = "HannahComparisons/MRS_HalfTSA_48h_pivot.csv")
write.csv(MRS_HalfTSA_96h_pivot, file = "HannahComparisons/MRS_HalfTSA_96h_pivot.csv")
write.csv(MRS_HalfTSA_Fe_48h_pivot, file = "HannahComparisons/MRS_HalfTSA_Fe_48h_pivot.csv")
write.csv(MRS_HalfTSA_Fe_96h_pivot, file = "HannahComparisons/MRS_HalfTSA_Fe_96h_pivot.csv")


HB_HalfTSA_48h_NOEdits <- read.csv("HannahComparisons/HB_HalfTSA_48h_Noedits.csv", header = TRUE)
HB_HalfTSA_48h_NoEdits_pivot <- pivot_longer(HB_HalfTSA_48h_NOEdits, c(2:16), values_drop_na = FALSE)
write.csv(HB_HalfTSA_48h_NoEdits_pivot, file = "HannahComparisons/HB_HalfTSA_48h_pivot_noedits.csv")

MRS_HalfTSA_48h_NoEdits <- read.csv("HannahComparisons/MRS_HalfTSA_48h_Noedits.csv", header = TRUE)
MRS_HalfTSA_48h_NoEdits$Microbacterium_BM4 <- as.character(MRS_HalfTSA_48h_NoEdits$Microbacterium_BM4)
MRS_HalfTSA_48h_NOEdits_pivot <- pivot_longer(MRS_HalfTSA_48h_NoEdits, c(2:16), values_drop_na = FALSE)
write.csv(MRS_HalfTSA_48h_NOEdits_pivot, file = "HannahComparisons/MRS_HalfTSA_48h_pivot_noEdits.csv")







#################################################################################### 

MRS_HB_HalfTSA_ALL <- rbind(HB_HalfTSA_48h_pivot, HB_HalfTSA_96h_pivot, 
                            HB_HalfTSA_Fe_48h_pivot, HB_HalfTSA_Fe_96h_pivot, 
                            MRS_HalfTSA_48h_pivot, MRS_HalfTSA_96h_pivot, 
                            MRS_HalfTSA_Fe_48h_pivot, MRS_HalfTSA_Fe_96h_pivot)

HB_HalfTSA_ALL <- rbind(HB_HalfTSA_48h_pivot, HB_HalfTSA_96h_pivot, 
                            HB_HalfTSA_Fe_48h_pivot, HB_HalfTSA_Fe_96h_pivot)
write.csv(HB_HalfTSA_ALL, file = "HannahComparisons/HB_HalfTSA_ALL.csv")

MRS_HalfTSA_ALL <- rbind(MRS_HalfTSA_48h_pivot, MRS_HalfTSA_96h_pivot, 
                            MRS_HalfTSA_Fe_48h_pivot, MRS_HalfTSA_Fe_96h_pivot)
write.csv(MRS_HalfTSA_ALL, file = "HannahComparisons/MRS_HalfTSA_ALL.csv")

MRS_HB_All_Consistency <- read.csv("HannahComparisons/TEST_Categories.csv", header = TRUE)



### All the same color plot
ggplot(data = MRS_HB_All_Consistency, aes(x=factor(Spot, level = strain_order_names),
                                          y=factor(Lawn, level = strain_order_names), fill=ConsistencyWithNumbers) ) + 
  facet_grid(Time ~ factor(Fe, level = c("No FeCl3", "35 µM FeCl3")), 
             space = "free", scales = "free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Differences between Hannah and Marissa's Datasets") + 
  scale_fill_manual(values = c("BothZero" = "whitesmoke", 
                               "InhibBoth" = "whitesmoke",
                               "StimBoth" = "whitesmoke",
                               "FLIP" = "orange", 
                               "NegOne-1" = "lightcoral", 
                               "NegOne-2" = "lightcoral", 
                               "NegOne-3" = "lightcoral", 
                               "NegOne-4" = "lightcoral", 
                               "NegOne-5" = "lightcoral", 
                               "NegOne-6" = "lightcoral", 
                               "NegOne-7" = "lightcoral", 
                               "NegOne-8" = "lightcoral", 
                               "NegOne-9" = "lightcoral", 
                               "NegOne-10" = "lightcoral", 
                               "OneStim-1" = "springgreen4",
                               "OneStim-2" = "springgreen4",
                               "OneStim-3" = "springgreen4",
                               "OneStim-4" = "springgreen4",
                               "OneStim-5" = "springgreen4"), 
                    na.value="grey92") +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="bold.italic"),
        axis.text.y=element_text(face="bold.italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=12, angle=0), 
        strip.text.y = element_text(face="bold", size=12, angle=270),
        panel.background = element_rect(fill="grey60"),
        panel.grid = element_blank()) +
  scale_x_discrete(expand = c(0.01, 0.01)) + scale_y_discrete(expand = c(0.01, 0.01))




### Gradient plot
ggplot(data = MRS_HB_All_Consistency, aes(x=factor(Spot, level = strain_order_names),
                                          y=factor(Lawn, level = strain_order_names), fill=ConsistencyWithNumbers) ) + 
  facet_grid(Time ~ factor(Fe, level = c("No FeCl3", "35 µM FeCl3")), 
             space = "free", scales = "free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Differences between Hannah and Marissa's Datasets") + 
  scale_fill_manual(values = c("BothZero" = "whitesmoke", 
                               "InhibBoth" = "whitesmoke",
                               "StimBoth" = "whitesmoke",
                               "FLIP" = "orange", 
                               "NegOne-1" = "mistyrose1", 
                               "NegOne-2" = "mistyrose1", 
                               "NegOne-3" = "mistyrose1", 
                               "NegOne-4" = "lightcoral", 
                               "NegOne-5" = "lightcoral", 
                               "NegOne-6" = "lightcoral", 
                               "NegOne-7" = "firebrick3", 
                               "NegOne-8" = "firebrick3", 
                               "NegOne-9" = "firebrick3", 
                               "NegOne-10" = "firebrick3", 
                               "OneStim-1" = "honeydew2",
                               "OneStim-2" = "honeydew2",
                               "OneStim-3" = "springgreen4",
                               "OneStim-4" = "springgreen4",
                               "OneStim-5" = "springgreen4"), 
                    na.value="grey92") +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="bold.italic"),
        axis.text.y=element_text(face="bold.italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=12, angle=0), 
        strip.text.y = element_text(face="bold", size=12, angle=270),
        panel.background = element_rect(fill="grey60"),
        panel.grid = element_blank()) +
  scale_x_discrete(expand = c(0.01, 0.01)) + scale_y_discrete(expand = c(0.01, 0.01))

###################################### R2A 48 and 96h ###########################################





strain_name_colors_abbrev <- c("darkgreen", "darkgreen", "darkseagreen4", "darkseagreen4", "darkseagreen4", 
                               "olivedrab", "olivedrab", "olivedrab", "purple4", "purple4",
                                "darkgoldenrod2", "darkgoldenrod2", "maroon",
                               "maroon", "maroon")

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




TEST <- read.csv("HannahComparisons/TEST.csv", header = TRUE)

ggplot(data = TEST, aes(x=factor(Sender),
                                      y=factor(Receiver), fill=Interaction) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on R2A during the first full replicate and the trial run, 96h") + 
  scale_fill_manual(values = c("red", "green", "blue")) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="bold.italic", color=strain_name_colors_abbrev),
        axis.text.y=element_text(face="bold.italic", size=9, color=strain_name_colors_abbrev),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=12, angle=90), 
        strip.text.y = element_text(face="bold", size=12, angle=270),
        panel.background = element_rect(fill="grey60"),
        panel.grid = element_blank()) +
  scale_x_discrete(expand = c(0.01, 0.01)) + scale_y_discrete(expand = c(0.01, 0.01))




































TrialFinal4896R2A <- rbind(R2A_96h_Trial_pivot, R2A_96h_Rep1_pivot,R2A_48h_Trial_pivot, R2A_48h_Rep1_pivot)


ggplot(data = TrialFinal4896R2A, aes(x=factor(Spot, level = strain_order_names),
                                      y=factor(Lawn, level =strain_order_names), fill=value) ) + 
  facet_grid(TrialFinal ~ Time, space = "free", scales = "free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on R2A during the first full replicate and the trial run, 48h") + 
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
        panel.grid = element_blank()) +
  scale_x_discrete(expand = c(0.01, 0.01)) + scale_y_discrete(expand = c(0.01, 0.01))
