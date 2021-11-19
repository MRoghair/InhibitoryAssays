#### Reproducibility 

setwd("~/Desktop/InhibitoryAssays")
library(tidyverse)


####################################### R2A data 48h ############################################# 
R2A_48h_Trial <- read.csv("Reproducibility_csvs/R2A_48h.csv", header = TRUE)
R2A_48h_Trial$Strain_ID <- as.character(R2A_48h_Trial$Strain_ID)
R2A_48h_Trial_pivot <- pivot_longer(R2A_48h_Trial, c(2:16), values_drop_na = FALSE)
R2A_48h_Trial_pivot$Lawn <- as.factor(R2A_48h_Trial_pivot$Strain_ID)
R2A_48h_Trial_pivot$Spot <- as.factor(R2A_48h_Trial_pivot$name)
R2A_48h_Trial_pivot$value <- as.numeric(R2A_48h_Trial_pivot$value)
R2A48h <- rep("R2A-48h", 225)
R2A_48h_Trial_pivot$MediaTime <- R2A48h
R2A <- rep("R2A", 225)
R2A_48h_Trial_pivot$Media <- R2A
Time48h <- rep("48h", 225)
R2A_48h_Trial_pivot$Time <- Time48h
Trial <- rep("Trial", 225)
R2A_48h_Trial_pivot$TrialFinal <- Trial
write.csv(R2A_48h_Trial_pivot, file = "Reproducibility_csvs/R2A_48h_Trial_pivot.csv")


# R2A data 48h 
R2A_48h_Rep1 <- read.csv("Reproducibility_csvs/R2A_Rep1_48h_reproduciblity.csv", header = TRUE)
R2A_48h_Rep1$Strain_ID <- as.character(R2A_48h_Rep1$Strain_ID)
R2A_48h_Rep1_pivot <- pivot_longer(R2A_48h_Rep1, c(2:16), values_drop_na = FALSE)
R2A_48h_Rep1_pivot$Lawn <- as.factor(R2A_48h_Rep1_pivot$Strain_ID)
R2A_48h_Rep1_pivot$Spot <- as.factor(R2A_48h_Rep1_pivot$name)
R2A_48h_Rep1_pivot$value <- as.numeric(R2A_48h_Rep1_pivot$value)
R2A48h <- rep("R2A-48h", 225)
R2A_48h_Rep1_pivot$MediaTime <- R2A48h
R2A <- rep("R2A", 225)
R2A_48h_Rep1_pivot$Media <- R2A
Time48h <- rep("48h", 225)
R2A_48h_Rep1_pivot$Time <- Time48h
Rep1 <- rep("Rep1", 225)
R2A_48h_Rep1_pivot$TrialFinal <- Rep1
write.csv(R2A_48h_Rep1_pivot, file = "Reproducibility_csvs/R2A_48h_Rep1_pivot.csv")


TrialFinal48hR2A <- rbind(R2A_48h_Trial_pivot, R2A_48h_Rep1_pivot)


ggplot(data = TrialFinal48hR2A, aes(x=TrialFinal,
                                    y=factor(Lawn, level =strain_order_names), fill=value) ) + 
  facet_grid(Media ~ factor(Spot, level = strain_order_names), space = "free", scales = "free") +
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
        strip.text.x = element_text(face="bold", size=12, angle=90), 
        strip.text.y = element_text(face="bold", size=12, angle=270),
        panel.background = element_rect(fill="grey60"),
        panel.grid = element_blank()) +
  scale_x_discrete(expand = c(0.01, 0.01)) + scale_y_discrete(expand = c(0.01, 0.01))



####################################### R2A data 96h ############################################# 

R2A_96h_Trial <- read.csv("Reproducibility_csvs/R2A_96h.csv", header = TRUE)
R2A_96h_Trial$Strain_ID <- as.character(R2A_96h_Trial$Strain_ID)
R2A_96h_Trial_pivot <- pivot_longer(R2A_96h_Trial, c(2:16), values_drop_na = FALSE)
R2A_96h_Trial_pivot$Lawn <- as.factor(R2A_96h_Trial_pivot$Strain_ID)
R2A_96h_Trial_pivot$Spot <- as.factor(R2A_96h_Trial_pivot$name)
R2A_96h_Trial_pivot$value <- as.numeric(R2A_96h_Trial_pivot$value)
R2A96h <- rep("R2A-96h", 225)
R2A_96h_Trial_pivot$MediaTime <- R2A96h
R2A <- rep("R2A", 225)
R2A_96h_Trial_pivot$Media <- R2A
Time96h <- rep("96h", 225)
R2A_96h_Trial_pivot$Time <- Time96h
Trial <- rep("Trial", 225)
R2A_96h_Trial_pivot$TrialFinal <- Trial
write.csv(R2A_96h_Trial_pivot, file = "Reproducibility_csvs/R2A_96h_Trial_pivot.csv")


R2A_96h_Rep1 <- read.csv("Reproducibility_csvs/R2A_Rep1_96h_reproducibility.csv", header = TRUE)
R2A_96h_Rep1$Strain_ID <- as.character(R2A_96h_Rep1$Strain_ID)
R2A_96h_Rep1_pivot <- pivot_longer(R2A_96h_Rep1, c(2:16), values_drop_na = FALSE)
R2A_96h_Rep1_pivot$Lawn <- as.factor(R2A_96h_Rep1_pivot$Strain_ID)
R2A_96h_Rep1_pivot$Spot <- as.factor(R2A_96h_Rep1_pivot$name)
R2A_96h_Rep1_pivot$value <- as.numeric(R2A_96h_Rep1_pivot$value)
R2A96h <- rep("R2A-96h", 225)
R2A_96h_Rep1_pivot$MediaTime <- R2A96h
R2A <- rep("R2A", 225)
R2A_96h_Rep1_pivot$Media <- R2A
Time96h <- rep("96h", 225)
R2A_96h_Rep1_pivot$Time <- Time96h
Rep1 <- rep("Rep1", 225)
R2A_96h_Rep1_pivot$TrialFinal <- Rep1
write.csv(R2A_96h_Rep1_pivot, file = "Reproducibility_csvs/R2A_96h_Rep1_pivot.csv")


TrialFinal96hR2A <- rbind(R2A_96h_Trial_pivot, R2A_96h_Rep1_pivot)



ggplot(data = TrialFinal96hR2A, aes(x=TrialFinal,
                                    y=factor(Lawn, level =strain_order_names), fill=value) ) + 
  facet_grid(Media ~ factor(Spot, level = strain_order_names), space = "free", scales = "free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on R2A during the first full replicate and the trial run, 96h") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey70", limit = c(-10,10)) +
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
