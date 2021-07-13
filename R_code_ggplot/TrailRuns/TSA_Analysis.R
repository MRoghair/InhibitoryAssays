
setwd("~/Desktop/InhibitoryAssayGraphing/TrialRuns")
library(tidyverse)


#Full-strength TSA data
FullTSA <- read.csv("TSA_forAnalysis.csv", header = TRUE)
FullTSA_pivot <- pivot_longer(FullTSA, c(2:17), values_drop_na = FALSE)
FullTSA_pivot$Lawn <- as.factor(FullTSA_pivot$Strain_ID)
FullTSA_pivot$Spot <- as.factor(FullTSA_pivot$name)
FullTSA_pivot$value <- as.numeric(FullTSA_pivot$value)

#Half-strength TSA data
HalfTSA48 <- read.csv("HalfTSA-48h.csv", header = TRUE)
HalfTSA48_pivot <- pivot_longer(HalfTSA48, c(2:17), values_drop_na = FALSE)
HalfTSA48_pivot$Lawn <- as.factor(HalfTSA48_pivot$Strain_ID)
HalfTSA48_pivot$Spot <- as.factor(HalfTSA48_pivot$name)
HalfTSA48_pivot$value <- as.numeric(HalfTSA48_pivot$value)
HalfTSA48h_2 <- rep("HalfTSA-48h", 256)
HalfTSA48_pivot$MediaTime <- HalfTSA48h_2
HalfTSA_2 <- rep("HalfTSA", 256)
HalfTSA48_pivot$Media <- HalfTSA_2
Time48h_2 <- rep("48h", 256)
HalfTSA48_pivot$Time <- Time48h_2

#Half-strength TSA data - 96h
HalfTSA96 <- read.csv("HalfTSA-96h.csv", header = TRUE)
HalfTSA96_pivot <- pivot_longer(HalfTSA96, c(2:17), values_drop_na = FALSE)
HalfTSA96_pivot$Lawn <- as.factor(HalfTSA96_pivot$Strain_ID)
HalfTSA96_pivot$Spot <- as.factor(HalfTSA96_pivot$name)
HalfTSA96_pivot$value <- as.numeric(HalfTSA96_pivot$value)
HalfTSA96h_2 <- rep("HalfTSA-96h", 256)
HalfTSA96_pivot$MediaTime <- HalfTSA96h_2
HalfTSA_2 <- rep("HalfTSA", 256)
HalfTSA96_pivot$Media <- HalfTSA_2
Time96h_2 <- rep("96h", 256)
HalfTSA96_pivot$Time <- Time96h_2

#One-tenth-strength TSA data
TenthTSA48 <- read.csv("TenthTSA-48h.csv", header = TRUE, nrows=16)
TenthTSA48_pivot <- pivot_longer(TenthTSA48, c(2:17), values_drop_na = FALSE)
TenthTSA48_pivot$Lawn <- as.factor(TenthTSA48_pivot$Strain_ID)
TenthTSA48_pivot$Spot <- as.factor(TenthTSA48_pivot$name)
TenthTSA48_pivot$value <- as.numeric(TenthTSA48_pivot$value)
TenthTSA48h_2 <- rep("TenthTSA-48h", 256)
TenthTSA48_pivot$MediaTime <- TenthTSA48h_2
TenthTSA_2 <- rep("TenthTSA", 256)
TenthTSA48_pivot$Media <- TenthTSA_2
Time48h_2 <- rep("48h", 256)
TenthTSA48_pivot$Time <- Time48h_2

#One-tenth-strength TSA data
TenthTSA96 <- read.csv("TenthTSA-96h.csv", header = TRUE, nrows=16)
TenthTSA96_pivot <- pivot_longer(TenthTSA96, c(2:17), values_drop_na = FALSE)
TenthTSA96_pivot$Lawn <- as.factor(TenthTSA96_pivot$Strain_ID)
TenthTSA96_pivot$Spot <- as.factor(TenthTSA96_pivot$name)
TenthTSA96_pivot$value <- as.numeric(TenthTSA96_pivot$value)
TenthTSA96h_2 <- rep("TenthTSA-96h", 256)
TenthTSA96_pivot$MediaTime <- TenthTSA96h_2
TenthTSA_2 <- rep("TenthTSA", 256)
TenthTSA96_pivot$Media <- TenthTSA_2
Time96h_2 <- rep("96h", 256)
TenthTSA96_pivot$Time <- Time96h_2


Merged_dilute_TSA <- rbind(HalfTSA48_pivot, HalfTSA96_pivot, 
                           TenthTSA48_pivot, TenthTSA96_pivot)

#Make a list to order the strains by Phyla
#G-Proteobacteria, B-Proteobacteria, A-Proteobacteria, Firmicutes, Actinos, Bacteroidetes
strain_order <- c('Pseudomonas_putida_KT2442', 'Pseudomonas_E5', 'Pseudomonas_RPE1',	
                  'Pseudomonas_RDP22', 'Pseudomonas_RDP27',	
                  'Luteibacter_BM7',	'Lysobacter_BM12',	'Stenotrophomonas_BM25',
                  'Variovax_RPC5', 'Burkholderia_RCH25', 'Massilia_Z16', 'Massilia_MnBlack',
                  'Ensifer_BM17', 'Sphingobium_Z2', 'Methylobacterium_RPE3',
                  'Chryseobacterium_SCH11', 'Dyadobacter_BM9',
                  'Exiguobacterium_RDH20',	'Exiguobacterium_RDH25',	'Bacillus_SCH24', 
                  'Paenibacillus_E12',
                  'Streptomyces_RDH1',	'Streptomyces_RCH20P',	'Cellulosimicrobium_BM1',		
                  'Microbacterium_BM4')

ggplot(data = Merged_dilute_TSA, aes(x=factor(Spot, level = strain_order),
                                     y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(Time ~ Media) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 100%, 50%, and 10% TSA") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "papayawhip", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))


# good NA colors = lightgoldenrodyellow, papayawhip, lavender, bisque

ggplot(data = FullTSA_pivot, aes(x=factor(Spot, level = strain_order),
                             y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 100% TSA") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(size=12, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=12),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=14))




ggplot(data = HalfTSA48_pivot, aes(x=factor(Spot, level = strain_order),
                                 y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 50% TSA - 48h incubation") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(size=12, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=12),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=14))




ggplot(data = HalfTSA96_pivot, aes(x=factor(Spot, level = strain_order),
                                   y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 50% TSA - 96h incubation") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(size=12, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=12),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=14))



ggplot(data = TenthTSA48_pivot, aes(x=factor(Spot, level = strain_order),
                                   y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 10% TSA - 48h incubation") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(size=12, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=12),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=14))


ggplot(data = TenthTSA96_pivot, aes(x=factor(Spot, level = strain_order),
                                    y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 10% TSA - 96h incubation") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=12, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=12),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=14))






#############################################################################################
####################### COMPARISONS ACROSS MEDIA STRENGTH AND TIME ##########################
#############################################################################################

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




# Merge all the datasets
Merged_TSA <- rbind(FullTSAabbrev_pivot, HalfTSA48abbrev_pivot, HalfTSA96abbrev_pivot, 
                    TenthTSA48abbrev_pivot, TenthTSA96abbrev_pivot)
Merged_dilute_TSA <- rbind(HalfTSA48abbrev_pivot, HalfTSA96abbrev_pivot, 
                    TenthTSA48abbrev_pivot, TenthTSA96abbrev_pivot)
Merged_TSA_48h <- rbind(FullTSAabbrev_pivot, HalfTSA48abbrev_pivot, TenthTSA48abbrev_pivot)


media_order <- c("FullTSA", "HalfTSA-48", "HalfTSA-96", "TenthTSA-48", "TenthTSA-96")




ggplot(data = Merged_TSA, aes(x=factor(Spot, level = strain_order),
                                    y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(Time ~ Media) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 100%, 50%, and 10% TSA") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))



ggplot(data = Merged_dilute_TSA, aes(x=factor(Spot, level = strain_order),
                              y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(Time ~ Media) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 100%, 50%, and 10% TSA") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))



ggplot(data = Merged_TSA_48h, aes(x=factor(Spot, level = strain_order),
                              y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(. ~ Media) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 100%, 50%, and 10% TSA") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12))
