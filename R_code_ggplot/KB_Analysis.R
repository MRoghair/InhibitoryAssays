
setwd("~/Desktop/InhibitoryAssayGraphing")
library(tidyverse)


#initially tried out working with the raw data. Range of data was too large 
# (outliers skew the distribution of color)
KB <- read.csv("V8_KB_forAnalysis.csv", header = TRUE)
KB_pivot <- pivot_longer(KB, c(2:37), values_drop_na = TRUE)
write_csv(KB_pivot, "KB_Pivot.csv")
KB_pivot$Lawn <- as.factor(KB_pivot$Strain.ID)
KB_pivot$Spot <- as.factor(KB_pivot$name)
KB_pivot$Lawn <- as.character(KB_pivot$value)




#Instead, decided to reformat so all values >10 looked the same and 
# all values <10 looked the same
KB2 <- read.csv("V8_KB_forAnalysis-2-rescale.csv", header = TRUE)
KB2_pivot <- pivot_longer(KB2, c(2:37), values_drop_na = FALSE)
KB2_pivot$Lawn <- as.factor(KB2_pivot$Strain.ID)
KB2_pivot$Spot <- as.factor(KB2_pivot$name)
KB2_pivot$value <- as.numeric(KB2_pivot$value)



#Make a list to order the strains by Phyla
#G-Proteobacteria, B-Proteobacteria, A-Proteobacteria, Firmicutes, Actinos, Bacteroidetes
strain_order <- c('KT2442','RDP22','RDP27','E5','RPE1_RP5', 'RPE1','PAO1','Pf5','PF5','RPA1',
                  'BM7','BM12','BM25', 'R23','S20', 
                  'RP5C','BM21','RCH25', 'MnBlack','Z16','SH-9',
                  'BM17','E15','BM23','E4','Z2','RCH3','RPE3',      
                  'RP5H','BM9','SCH11',
                  'RDH20','RDH25','SCH24','SH11','E12','SH19',
                  'BM16','R1','RDH1','RCH20P', 'BM1','BM4','BM13','SCH4','RDH6', 
                  'KT2442.Fe','RDP22.Fe','RDP27.Fe','E5.Fe','RPE1.Fe','RP5.Fe', 'PAO1.Fe','PF5.Fe')

strain_order_Ps <- c('KT2442','RDP22','RDP27','E5','RPE1_RP5', 'RPE1',
                  'KT2442.Fe','RDP22.Fe','RDP27.Fe','E5.Fe','RPE1.Fe',
                  'KT2442.Diff','RDP22.Diff','RDP27.Diff','E5.Diff', 'RPE1.Diff')

# This plot looks great! Heatmap of inhibition
# Key: green (positive values) = stimulation, red (negative values = inhibition
ggplot(data = KB2_pivot, aes(x=factor(Spot, level = strain_order),
                             y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on King's B") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        plot.title = element_text(hjust = 0.5))

  



# TSA data
TSA <- read.csv("TSA_forAnalysis.csv", header = TRUE)
TSA_pivot <- pivot_longer(TSA, c(2:17), values_drop_na = FALSE)
TSA_pivot$Lawn <- as.factor(TSA_pivot$Strain_ID)
TSA_pivot$Spot <- as.factor(TSA_pivot$name)
TSA_pivot$value <- as.numeric(TSA_pivot$value)


ggplot(data = TSA_pivot, aes(x=factor(Spot, level = strain_order),
                             y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 100% TSA") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        plot.title = element_text(hjust = 0.5))





# NA data
NA50 <- read.csv("50NA_forAnalysis.csv", header = TRUE)
NA50_pivot <- pivot_longer(NA50, c(2:13), values_drop_na = FALSE)
NA50_pivot$Lawn <- as.factor(NA50_pivot$Strain_ID)
NA50_pivot$Spot <- as.factor(NA50_pivot$name)
NA50_pivot$value <- as.numeric(NA50_pivot$value)


ggplot(data = NA50_pivot, aes(x=factor(Spot, level = strain_order),
                             y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on 50% NA") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "grey95", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        plot.title = element_text(hjust = 0.5))




# R2A data
R2A <- read.csv("R2A_forAnalysis.csv", header = TRUE)
R2A_pivot <- pivot_longer(R2A, c(2:17), values_drop_na = FALSE)
R2A_pivot$Lawn <- as.factor(R2A_pivot$Strain_ID)
R2A_pivot$Spot <- as.factor(R2A_pivot$name)
R2A_pivot$value <- as.numeric(R2A_pivot$value)


ggplot(data = R2A_pivot, aes(x=factor(Spot, level = strain_order),
                             y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on R2A") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "grey95", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        plot.title = element_text(hjust = 0.5))






KB_Fe <- read.csv("KBandKBFe_forAnalysis.csv", header = TRUE)
KBFe_pivot <- pivot_longer(KB_Fe, c(2:15), values_drop_na = FALSE)
KBFe_pivot$Lawn <- as.factor(KBFe_pivot$Strain_ID)
KBFe_pivot$Spot <- as.factor(KBFe_pivot$name)
KBFe_pivot$value <- as.numeric(KBFe_pivot$value)


KB_Fe2 <- read.csv("KBandKBFe_forAnalysis-2.csv", header = TRUE)
KBFe2_pivot <- pivot_longer(KB_Fe2, c(2:11), values_drop_na = FALSE)
KBFe2_pivot$Lawn <- as.factor(KBFe2_pivot$Strain_ID)
KBFe2_pivot$Spot <- as.factor(KBFe2_pivot$name)
KBFe2_pivot$value <- as.numeric(KBFe2_pivot$value)

ggplot(data = KBFe_pivot, aes(x=factor(Spot, level = strain_order),
                               y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on King's B and King's B + 50 µM FeCl3") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        plot.title = element_text(hjust = 0.5))


ggplot(data = KBFe2_pivot, aes(x=factor(Spot, level = strain_order_Ps),
                               y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on King's B and King's B + 50 µM FeCl3") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        plot.title = element_text(hjust = 0.5))



KB_Fe_KT <- read.csv("KBandKBFe_forAnalysis-justKT.csv", header = TRUE)
KBFe_KT_pivot <- pivot_longer(KB_Fe_KT, c(2:3), values_drop_na = FALSE)
KBFe_KT_pivot$Lawn <- as.factor(KBFe_KT_pivot$Strain_ID)
KBFe_KT_pivot$Spot <- as.factor(KBFe_KT_pivot$name)
KBFe_KT_pivot$value <- as.numeric(KBFe_KT_pivot$value)


ggplot(data = KBFe_KT_pivot, aes(x=factor(Spot, level = strain_order_Ps),
                               y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("KT2442 on KB") + 
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        plot.title = element_text(hjust = 0.5))



Exig <- read.delim("Exiguobacteria.txt", header = TRUE, sep = "\t")
Exig_pivot <- pivot_longer(Exig, c(2:40), values_drop_na = FALSE)
Exig_pivot$Lawn <- as.factor(Exig_pivot$Strain.ID)
Exig_pivot$Spot <- as.factor(Exig_pivot$name)
Exig_pivot$value <- as.numeric(Exig_pivot$value)


ggplot(data = Exig_pivot, aes(x=factor(Spot, level = strain_order),
                                 y=factor(Lawn, level = strain_order), fill=value) ) + 
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Exig on KB") + 
  scale_fill_gradient2(low = "darkblue", high = "goldenrod", mid = "whitesmoke", 
                       midpoint = 0, space = "Lab",
                       na.value = "grey50", limit = c(-10,10)) +
  labs(fill = "") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        plot.title = element_text(hjust = 0.5))

