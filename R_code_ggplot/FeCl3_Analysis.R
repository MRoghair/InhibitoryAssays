
setwd("~/Desktop/InhibitoryAssays/Data_csvs")
library(tidyverse)


#Half-strength TSA data - 48h
HalfTSA48 <- read.csv("HalfTSA-48h.csv", header = TRUE)
HalfTSA48_pivot <- pivot_longer(HalfTSA48, c(2:17), values_drop_na = FALSE)
HalfTSA48_pivot$Lawn <- as.factor(HalfTSA48_pivot$Strain_ID)
HalfTSA48_pivot$Spot <- as.factor(HalfTSA48_pivot$name)
HalfTSA48_pivot$value <- as.numeric(HalfTSA48_pivot$value)
HalfTSA48h_2 <- rep("HalfTSA-48h", 256)
HalfTSA48_pivot$MediaTime <- HalfTSA48h_2
HalfTSA_2 <- rep("HalfTSA", 256)
HalfTSA48_pivot$Media <- HalfTSA_2
HalfTSA48_pivot$BaseMedia <- HalfTSA_2
NoFe <- rep("-FeCl3", 256)
HalfTSA48_pivot$FeSupp <- NoFe
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
HalfTSA96_pivot$BaseMedia <- HalfTSA_2
NoFe <- rep("-FeCl3", 256)
HalfTSA96_pivot$FeSupp <- NoFe
Time96h_2 <- rep("96h", 256)
HalfTSA96_pivot$Time <- Time96h_2

#Half-strength TSA + FeCl3 - 48h
HalfTSAFe48 <- read.csv("HalfTSA_35Fe-48h.csv", header = TRUE)
HalfTSA48Fe_pivot <- pivot_longer(HalfTSAFe48, c(2:17), values_drop_na = FALSE)
HalfTSA48Fe_pivot$Lawn <- as.factor(HalfTSA48Fe_pivot$Strain_ID)
HalfTSA48Fe_pivot$Spot <- as.factor(HalfTSA48Fe_pivot$name)
HalfTSA48Fe_pivot$value <- as.numeric(HalfTSA48Fe_pivot$value)
HalfTSAFe48h_2 <- rep("HalfTSAFe-48h", 256)
HalfTSA48Fe_pivot$MediaTime <- HalfTSAFe48h_2
HalfTSAFe_2 <- rep("HalfTSA+Fe", 256)
HalfTSA48Fe_pivot$Media <- HalfTSAFe_2
HalfTSA48Fe_pivot$BaseMedia <- HalfTSA_2
SuppFe <- rep("+FeCl3", 256)
HalfTSA48Fe_pivot$FeSupp <- SuppFe
Time48h_2 <- rep("48h", 256)
HalfTSA48Fe_pivot$Time <- Time48h_2

#Half-strength TSA + FeCL3 - 96h
HalfTSAFe96 <- read.csv("HalfTSA_35Fe-96h.csv", header = TRUE)
HalfTSAFe96_pivot <- pivot_longer(HalfTSAFe96, c(2:17), values_drop_na = FALSE)
HalfTSAFe96_pivot$Lawn <- as.factor(HalfTSAFe96_pivot$Strain_ID)
HalfTSAFe96_pivot$Spot <- as.factor(HalfTSAFe96_pivot$name)
HalfTSAFe96_pivot$value <- as.numeric(HalfTSAFe96_pivot$value)
HalfTSAFe96h_2 <- rep("HalfTSAFe-96h", 256)
HalfTSAFe96_pivot$MediaTime <- HalfTSAFe96h_2
HalfTSAFe_2 <- rep("HalfTSA+Fe", 256)
HalfTSAFe96_pivot$Media <- HalfTSAFe_2
HalfTSAFe96_pivot$BaseMedia <- HalfTSA_2
SuppFe <- rep("+FeCl3", 256)
HalfTSAFe96_pivot$FeSupp <- SuppFe
Time96h_2 <- rep("96h", 256)
HalfTSAFe96_pivot$Time <- Time96h_2




#One-tenth-strength TSA data - 48h
TenthTSA48 <- read.csv("TenthTSA-48h.csv", header = TRUE, nrows=16)
TenthTSA48_pivot <- pivot_longer(TenthTSA48, c(2:17), values_drop_na = FALSE)
TenthTSA48_pivot$Lawn <- as.factor(TenthTSA48_pivot$Strain_ID)
TenthTSA48_pivot$Spot <- as.factor(TenthTSA48_pivot$name)
TenthTSA48_pivot$value <- as.numeric(TenthTSA48_pivot$value)
TenthTSA48h_2 <- rep("TenthTSA-48h", 256)
TenthTSA48_pivot$MediaTime <- TenthTSA48h_2
TenthTSA_2 <- rep("TenthTSA", 256)
TenthTSA48_pivot$Media <- TenthTSA_2
TenthTSA48_pivot$BaseMedia <- TenthTSA_2
NoFe <- rep("-FeCl3", 256)
TenthTSA48_pivot$FeSupp <- NoFe
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
TenthTSA96_pivot$BaseMedia <- TenthTSA_2
NoFe <- rep("-FeCl3", 256)
TenthTSA96_pivot$FeSupp <- NoFe
Time96h_2 <- rep("96h", 256)
TenthTSA96_pivot$Time <- Time96h_2

#One-tenth-strength TSA+Fe data
TenthTSAFe48 <- read.csv("TenthTSA_35Fe-48h.csv", header = TRUE, nrows=16)
TenthTSAFe48_pivot <- pivot_longer(TenthTSAFe48, c(2:17), values_drop_na = FALSE)
TenthTSAFe48_pivot$Lawn <- as.factor(TenthTSAFe48_pivot$Strain_ID)
TenthTSAFe48_pivot$Spot <- as.factor(TenthTSAFe48_pivot$name)
TenthTSAFe48_pivot$value <- as.numeric(TenthTSAFe48_pivot$value)
TenthTSAFe48h_2 <- rep("TenthTSAFe-48h", 256)
TenthTSAFe48_pivot$MediaTime <- TenthTSAFe48h_2
TenthTSAFe_2 <- rep("TenthTSA+Fe", 256)
TenthTSAFe48_pivot$Media <- TenthTSAFe_2
TenthTSAFe48_pivot$BaseMedia <- TenthTSA_2
SuppFe <- rep("+FeCl3", 256)
TenthTSAFe48_pivot$FeSupp <- SuppFe
Time48h_2 <- rep("48h", 256)
TenthTSAFe48_pivot$Time <- Time48h_2

#One-tenth-strength TSA+Fe data
TenthTSA96Fe <- read.csv("TenthTSA_35Fe-96h.csv", header = TRUE, nrows=16)
TenthTSA96Fe_pivot <- pivot_longer(TenthTSA96Fe, c(2:17), values_drop_na = FALSE)
TenthTSA96Fe_pivot$Lawn <- as.factor(TenthTSA96Fe_pivot$Strain_ID)
TenthTSA96Fe_pivot$Spot <- as.factor(TenthTSA96Fe_pivot$name)
TenthTSA96Fe_pivot$value <- as.numeric(TenthTSA96Fe_pivot$value)
TenthTSA96hFe_2 <- rep("TenthTSAFe-96h", 256)
TenthTSA96Fe_pivot$MediaTime <- TenthTSA96hFe_2
TenthTSAFe_2 <- rep("TenthTSA+Fe", 256)
TenthTSA96Fe_pivot$Media <- TenthTSAFe_2
TenthTSA96Fe_pivot$BaseMedia <- TenthTSA_2
SuppFe <- rep("+FeCl3", 256)
TenthTSA96Fe_pivot$FeSupp <- SuppFe
Time96h_2 <- rep("96h", 256)
TenthTSA96Fe_pivot$Time <- Time96h_2


#R2A data
R2A48 <- read.csv("R2A_forAnalysis_NoSH19.csv", header = TRUE, nrows=16)
R2A48_pivot <- pivot_longer(R2A48, c(2:17), values_drop_na = FALSE)
R2A48_pivot$Lawn <- as.factor(R2A48_pivot$Strain_ID)
R2A48_pivot$Spot <- as.factor(R2A48_pivot$name)
R2A48_pivot$value <- as.numeric(R2A48_pivot$value)
R2A_48h <- rep("R2A-48h", 256)
R2A48_pivot$MediaTime <- R2A_48h
R2A <- rep("R2A", 256)
R2A48_pivot$Media <- R2A
R2A48_pivot$BaseMedia <- R2A
NoFe <- rep("-FeCl3", 256)
R2A48_pivot$FeSupp <- NoFe
Time48h_2 <- rep("48h", 256)
R2A48_pivot$Time <- Time48h_2


#R2A+Fe data
R2AFe48 <- read.csv("R2A_Fe_48h.csv", header = TRUE, nrows=16)
R2AFe48_pivot <- pivot_longer(R2AFe48, c(2:17), values_drop_na = FALSE)
R2AFe48_pivot$Lawn <- as.factor(R2AFe48_pivot$Strain_ID)
R2AFe48_pivot$Spot <- as.factor(R2AFe48_pivot$name)
R2AFe48_pivot$value <- as.numeric(R2AFe48_pivot$value)
R2AFe_48h <- rep("R2A-Fe-48h", 256)
R2AFe48_pivot$MediaTime <- R2AFe_48h
R2AFe <- rep("R2A+Fe", 256)
R2AFe48_pivot$Media <- R2AFe
R2AFe48_pivot$BaseMedia <- R2A
SuppFe <- rep("+FeCl3", 256)
R2AFe48_pivot$FeSupp <- SuppFe
Time48h_2 <- rep("48h", 256)
R2AFe48_pivot$Time <- Time48h_2


#R2A 96h data
R2A96 <- read.csv("R2A_96h_noSH19.csv", header = TRUE, nrows=16)
R2A96_pivot <- pivot_longer(R2A96, c(2:17), values_drop_na = FALSE)
R2A96_pivot$Lawn <- as.factor(R2A96_pivot$Strain_ID)
R2A96_pivot$Spot <- as.factor(R2A96_pivot$name)
R2A96_pivot$value <- as.numeric(R2A96_pivot$value)
R2A_96h <- rep("R2A-96h", 256)
R2A96_pivot$MediaTime <- R2A_96h
R2A <- rep("R2A", 256)
R2A96_pivot$Media <- R2A
R2A96_pivot$BaseMedia <- R2A
NoFe <- rep("-FeCl3", 256)
R2A96_pivot$FeSupp <- NoFe
Time96h_2 <- rep("96h", 256)
R2A96_pivot$Time <- Time96h_2


#R2A+Fe 96h data
R2AFe96 <- read.csv("R2A_Fe_96h.csv", header = TRUE, nrows=16)
R2AFe96_pivot <- pivot_longer(R2AFe96, c(2:17), values_drop_na = FALSE)
R2AFe96_pivot$Lawn <- as.factor(R2AFe96_pivot$Strain_ID)
R2AFe96_pivot$Spot <- as.factor(R2AFe96_pivot$name)
R2AFe96_pivot$value <- as.numeric(R2AFe96_pivot$value)
R2AFe_96h <- rep("R2A-Fe-96h", 256)
R2AFe96_pivot$MediaTime <- R2AFe_96h
R2AFe <- rep("R2A+Fe", 256)
R2AFe96_pivot$Media <- R2AFe
R2AFe96_pivot$BaseMedia <- R2A
SuppFe <- rep("+FeCl3", 256)
R2AFe96_pivot$FeSupp <- SuppFe
Time96h_2 <- rep("96h", 256)
R2AFe96_pivot$Time <- Time96h_2



#LA data
LA48 <- read.csv("LA_48h.csv", header = TRUE, nrows=16)
LA48_pivot <- pivot_longer(LA48, c(2:14), values_drop_na = FALSE)
LA48_pivot$Lawn <- as.factor(LA48_pivot$Strain_ID)
LA48_pivot$Spot <- as.factor(LA48_pivot$name)
LA48_pivot$value <- as.numeric(LA48_pivot$value)
LA_48h <- rep("LA-48h", 169)
LA48_pivot$MediaTime <- LA_48h
LA <- rep("LA", 169)
LA48_pivot$Media <- LA
LA48_pivot$BaseMedia <- LA
NoFe <- rep("-FeCl3", 169)
LA48_pivot$FeSupp <- NoFe
Time48h_2 <- rep("48h", 169)
LA48_pivot$Time <- Time48h_2

# KB data
KB48 <- read.csv("KB_abbrev.csv", header = TRUE)
KB48_pivot <- pivot_longer(KB48, c(2:6), values_drop_na = FALSE)
KB48_pivot$Lawn <- as.factor(KB48_pivot$Strain_ID)
KB48_pivot$Spot <- as.factor(KB48_pivot$name)
KB48_pivot$value <- as.numeric(KB48_pivot$value)
KB48h <- rep("KB-48h", 80)
KB48_pivot$MediaTime <- KB48h
KB <- rep("KB", 80)
KB48_pivot$Media <- KB
KB48_pivot$BaseMedia <- KB
Time48h_2 <- rep("48h", 80)
KB48_pivot$Time <- Time48h_2
NoFe <- rep("-FeCl3", 80)
KB48_pivot$FeSupp <- NoFe

# KB data
KBFe48 <- read.csv("KBFe_abbrev.csv", header = TRUE)
KBFe48_pivot <- pivot_longer(KBFe48, c(2:6), values_drop_na = FALSE)
KBFe48_pivot$Lawn <- as.factor(KBFe48_pivot$Strain_ID)
KBFe48_pivot$Spot <- as.factor(KBFe48_pivot$name)
KBFe48_pivot$value <- as.numeric(KBFe48_pivot$value)
KBFe48h <- rep("KBFe-48h", 80)
KBFe48_pivot$MediaTime <- KBFe48h
KBFe <- rep("KB-Fe", 80)
KBFe48_pivot$Media <- KBFe
KBFe48_pivot$BaseMedia <- KB
Time48h_2 <- rep("48h", 80)
KBFe48_pivot$Time <- Time48h_2
SuppFe <- rep("+FeCl3", 80)
KBFe48_pivot$FeSupp <- SuppFe



all_merge_LA <- rbind(HalfTSA48_pivot, HalfTSA96_pivot, HalfTSA48Fe_pivot, HalfTSAFe96_pivot,
                   R2A48_pivot, R2AFe48_pivot, R2AFe96_pivot, R2A96_pivot,
                   TenthTSA48_pivot, TenthTSA96_pivot, TenthTSAFe48_pivot, TenthTSA96Fe_pivot,
                   KB48_pivot, KBFe48_pivot,
                   LA48_pivot)

all_merge <- rbind(HalfTSA48_pivot, HalfTSA96_pivot, HalfTSA48Fe_pivot, HalfTSAFe96_pivot,
                   R2A48_pivot, R2AFe48_pivot, R2AFe96_pivot, R2A96_pivot,
                   TenthTSA48_pivot, TenthTSA96_pivot, TenthTSAFe48_pivot, TenthTSA96Fe_pivot,
                   KB48_pivot, KBFe48_pivot)

Fe_48h <- rbind(HalfTSA48_pivot, HalfTSA48Fe_pivot,
                   R2A48_pivot, R2AFe48_pivot,
                   TenthTSA48_pivot, TenthTSAFe48_pivot,
                   KB48_pivot, KBFe48_pivot)

all_Fe49and96_merge <- rbind(HalfTSA48_pivot, HalfTSA96_pivot, HalfTSA48Fe_pivot, HalfTSAFe96_pivot,
                   R2A48_pivot, R2AFe48_pivot, R2AFe96_pivot, R2A96_pivot,
                   TenthTSA48_pivot, TenthTSA96_pivot, TenthTSAFe48_pivot, TenthTSA96Fe_pivot)

kb_merge <- rbind(KB48_pivot, KBFe48_pivot)



Merged_Fe_supp <- rbind(HalfTSA48_pivot, HalfTSA96_pivot, 
                        HalfTSA48Fe_pivot, HalfTSAFe96_pivot)
Merged_Fe_supp <- rbind(HalfTSA48_pivot, HalfTSA96_pivot, 
                        HalfTSA48Fe_pivot, HalfTSAFe96_pivot)

#Make a list to order the strains by Phyla
#G-Proteobacteria, B-Proteobacteria, A-Proteobacteria, Firmicutes, Actinos, Bacteroidetes
strain_order <- c('Pseudomonas_putida_KT2442', 'Pseudomonas_E5', 'Pseudomonas_RPE1',	'Pseudomonas_RP5'
                  'Pseudomonas_RDP22', 'Pseudomonas_RDP27',	
                  'Luteibacter_BM7',	'Lysobacter_BM12',	'Stenotrophomonas_BM25',
                  'Variovax_RPC5', 'Burkholderia_RCH25', 'Massilia_Z16', 'Massilia_MnBlack',
                      'Massilia_sp',
                  'Ensifer_BM17', 'Sphingobium_Z2', 'Methylobacterium_RPE3',
                  'Chryseobacterium_SCH11', 'Dyadobacter_BM9',
                  'Exiguobacterium_RDH20',	'Exiguobacterium_RDH25',	'Bacillus_SCH24', 
                  'Paenibacillus_E12','Paenibacillus_SH19',
                  'Streptomyces_RDH1',	'Streptomyces_RCH20P',	'Cellulosimicrobium_BM1',		
                  'Microbacterium_BM4', 'Pseudomonas_PAO1', 'Pseudomonas_Pf5')



ggplot(data = Merged_Fe_supp, aes(x=factor(Spot, level = strain_order),
                                     y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(Time ~ Media) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 50% and 10% TSA over time") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey75", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))

ggplot(data = Merged_Fe_supp, aes(x=factor(Spot, level = strain_order),
                                  y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(Time ~ FeSupp) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 50% and 10% TSA over time") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey75", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))


# good NA colors = lightgoldenrodyellow, papayawhip, lavender, bisque





#############################################################################################
######################################### PLOTS #############################################
#############################################################################################

# good NA colors = lightgoldenrodyellow, papayawhip, lavender, bisque


# Half and Tenth TSA

Merged_dilute_TSA <- rbind(HalfTSA48_pivot, HalfTSA96_pivot, 
                        TenthTSA48_pivot, TenthTSA96_pivot)

ggplot(data = Merged_dilute_TSA, aes(x=factor(Spot, level = strain_order),
                                  y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(Time ~ Media) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 50% and 10% TSA over time") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey75", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))



# Fe Supplementation

Merged_Fe_supp <- rbind(HalfTSA48_pivot, HalfTSA96_pivot, 
                        HalfTSA48Fe_pivot, HalfTSAFe96_pivot)

ggplot(data = Merged_Fe_supp, aes(x=factor(Spot, level = strain_order),
                                  y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(Time ~ FeSupp) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 50% and 10% TSA over time") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey75", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))




Merged_Fe_supp_all <- rbind(HalfTSA48_pivot, HalfTSA96_pivot, HalfTSA48Fe_pivot, 
                        HalfTSAFe96_pivot, TenthTSA48_pivot, TenthTSA96_pivot)


ggplot(data = all_merge, aes(x=factor(Spot, level = strain_order),
                                  y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(Time ~ Media, space="free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 50% and 10% TSA over time") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey75", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))


kb_merge <- rbind(KB48_pivot, KBFe48_pivot)
ggplot(data = kb_merge, aes(x=factor(Spot, level = strain_order),
                                      y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(FeSupp ~ .) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on KB +/- FeCL3") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey90", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white")) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))



kb_merge <- rbind(KB48_pivot, KBFe48_pivot)
ggplot(data = kb_merge, aes(x=factor(Spot, level = strain_order),
                            y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(FeSupp ~ .) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 50% and 10% TSA over time") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey90", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white")) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))




# Plotting all media plus their Fe supplements
ncol(HalfTSA48_pivot)
ncol(HalfTSA96_pivot)
ncol(HalfTSA48Fe_pivot)
ncol(HalfTSAFe96_pivot)
ncol(TenthTSA48_pivot) 
ncol(TenthTSA96_pivot)
ncol(KB48_pivot) 
ncol(KBFe48_pivot)

fe_merge_KB <- rbind(HalfTSA48_pivot, HalfTSA48Fe_pivot, 
                  R2A48_pivot, R2AFe48_pivot,
                  TenthTSA48_pivot, TenthTSAFe48_pivot, 
                  KB48_pivot, KBFe48_pivot)

fe_merge <- rbind(HalfTSA48_pivot, HalfTSA48Fe_pivot, 
                  R2A48_pivot, R2AFe48_pivot,
                  TenthTSA48_pivot, TenthTSAFe48_pivot)

all_regular_merge <- rbind(HalfTSA48_pivot, 
                     R2A48_pivot,
                     TenthTSA48_pivot, 
                     KB48_pivot,
                     LA48_pivot)


ggplot(data = all_merge, aes(x=factor(Spot, level = strain_order),
                            y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(Time ~ factor(BaseMedia, level = media_order) + FeSupp, 
             scales = "free", space = "free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions with/without supplemental FeCl3") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey90", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text = element_text(face="bold", size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))


# Facet by organism, with media on the x axis
media_order <- rbind('KB','LA', 'HalfTSA', 'R2A', 'TenthTSA')

ggplot(data = Fe_48h, aes(x=factor(BaseMedia, level = media_order),
                            y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(FeSupp ~ factor(Spot, level = strain_order), scales = "free", space = "free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions with/without supplemental FeCl3") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey90", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold.italic", size=10, angle = 90), 
        strip.text.y = element_text(face="bold", size=10, angle=0)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))


allmedia_order = c("HalfTSA", "R2A", "TenthTSA", "HalfTSA+Fe", "R2A+Fe", "TenthTSA+Fe")

ggplot(data = all_Fe49and96_merge, aes(x=factor(Media, level=allmedia_order),
                               y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(Time ~ factor(Spot, level = strain_order), scales = "free", space = "free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions with/without supplemental FeCl3 over time") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey90", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=7, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=7),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=9, angle=90), 
        strip.text.y = element_text(face="bold", size=10, angle=0)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))


ggplot(data = fe_merge_KB, aes(x=factor(Spot, level = strain_order),
                               y=factor(Lawn, level =strain_order), fill=value) ) + 
  facet_grid(FeSupp ~ factor(BaseMedia, level = media_order), scales = "free", space = "free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions with/without supplemental FeCl3") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey90", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(angle = 90), 
        strip.text = element_text(face="bold", size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))

#experimental plot... doesn't look quite right yet
ggplot(data = all_merge, aes(x=factor(Spot, level = strain_order),
                            y=factor(Lawn, level = strain_order), fill=value) ) + 
  facet_grid(Time ~ factor(BaseMedia, level = media_order), scales = "free", space = "free") +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions with/without supplemental FeCl3") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey90", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.y = element_text(angle = 0),
        strip.text.x = element_text(angle = 90)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))

#############################################################################################
####################### COMPARISONS ACROSS MEDIA STRENGTH AND TIME ##########################
#############################################################################################




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
Time48h <- rep("48h", 64)
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
Merged_TSA <- rbind(HalfTSA48abbrev_pivot, HalfTSA96abbrev_pivot, 
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



#LA data
LA48 <- read.csv("LA_48h.csv", header = TRUE, nrows=16)
LA48_pivot <- pivot_longer(LA48, c(2:14), values_drop_na = FALSE)
LA48_pivot$Lawn <- as.factor(LA48_pivot$Strain_ID)
LA48_pivot$Spot <- as.factor(LA48_pivot$name)
LA48_pivot$value <- as.numeric(LA48_pivot$value)
LA_48h <- rep("LA-48h", 169)
LA48_pivot$MediaTime <- LA_48h
LA <- rep("LA", 169)
LA48_pivot$Media <- LA
LA48_pivot$BaseMedia <- LA
NoFe <- rep("-FeCl3", 169)
LA48_pivot$FeSupp <- NoFe
Time48h_2 <- rep("48h", 169)
LA48_pivot$Time <- Time48h_2

ggplot(data = LA48_pivot, aes(x=factor(Spot, level = strain_order),
                              y=factor(Lawn, level =strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on LA") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") + 
  theme(axis.text.x = element_text(size=9, angle = 45, vjust = 1, hjust = 1, face="italic"),
        axis.text.y=element_text(face="italic", size=9),
        plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12)) +
  scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))

