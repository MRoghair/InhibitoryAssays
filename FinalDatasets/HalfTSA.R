################### ggplot tutorial using the Final HalfTSA Dataset ##########################

########################### Info before getting started ###########################

# 1. Take your initial dataset for the assay and convert it solely into numeric. 
#    - This will involve converting all INHIBITION values to NEGATIVE numbers 
#       and all STIMULATION values to POSITIVE numbers. 
#    - Don't worry that some values are LD and some are regular/complete inhibition.
#       They will all be treated the same here, as mm measurements.
#    - Ignore any extraneous information (spreading, swarming, color changes...)
#       These things will be analyzed separately on their own.
#    - If you have inhibition > 10 mm, list it as -10. If you have stimulation > 10 mm, list it as 10. 
#       This prevents the color gradient from being skewed by extreme values
#    - If you have any missing values, type in "NA" before importing into R. 
#       Don't type "N/A", R doesn't like the symbol.

# 2. Rename your rows and columns into the format listed below. 
#    - It's easiest to first rename from old strain ID's to new strain ID's, 
#       then add in the name of the organism. Make sure to include underscores, as 
#       R doesn't deal well with spaces in datasets. 
#    - it doesn't matter what order your columns or rows are in yet, we'll put 
#       them in order when we start graphing.

        # list of all organisms in the dataset, ordered by phyla
            #   'Pseudomonas_putida_KT2442', 'Pseudomonas_E05', 'Luteibacter_E22',
            #   'Lysobacter_E23', 'Stenotrophomonas_R24', 'Dyella_R26', 'Enterobacter_R25', 
            #   'Variovorax_R27', 'Acidovorax_R28', 'Massilia_S14', 'Massilia_R31', 'Ralstonia_R29', 'Burkholderia_R30',
            #   'Ensifer_E15', 'Ensifer_R19', 'Agrobacterium_E04', 'Methylobacterium_R20', 'Sphingobium_R21',
            #   'Hymenobacter_R03', 'Dyadobacter_E01', 'Chryseobacterium_S02', 'Pedobacter_R06', 
            #   'Exiguobacterium_R17', 'Bacillus_S18', 'Paenibacillus_E12', 'Nocardioides_E09', 
            #   'Cellulosimicrobium_E16', 'Micrococcus_S10', 'Microbacterium_E13', 'Arthrobacter_R11',
            #   'Streptomyces_R07', 'Streptomyces_E08')

# 3. Reformat and convert your excel documents to csvs
#    - Don't leave any white space above or to the left of your dataset
#    - In cell A1 of every spreadsheet, type "Strain_ID"
#    - Save as a CSV (R can interpret XLSX too, but the code varies between Mac/PC)
#    - Save each of your 4 datasets as their own CSV, making sure there are no spaces in the name
#       (Ex: HalfTSA_48h, HalfTSA_96h, HalfTSA_Fe_48h, and HalfTSA_Fe_96h)


# 4. Put all the datasets plus this file in one folder  
#    (Desktop is an easy place to find them)
#    - Include my 4 HalfTSA datasets too if you want to make sure you can get them to work before moving on to your own!






#################################### CODE #################################### 

setwd("~/Desktop/InhibitoryAssays")
library(tidyverse)                      #tidyverse is a package we use to make graphs



# HalfTSA data 48h 
HalfTSA_48h <- read.csv("FinalDatasets/HalfTSA_48h.csv", header = TRUE, nrows = 32)  #import data, include the first row as a header, and cut off anything beyond 32 rows (32 organisms)
HalfTSA_48h$Strain_ID <- as.character(HalfTSA_48h$Strain_ID)                           #I make sure to tell R which of my columns are "characters" vs "numeric"
HalfTSA_48h_pivot <- pivot_longer(HalfTSA_48h, c(2:33), values_drop_na = FALSE)        #this will turn our "square" table into a "long" table. You'll get a column each for the producer, the receiver, and the number 
HalfTSA_48h_pivot$Lawn <- as.factor(HalfTSA_48h_pivot$Strain_ID)                       #This command creates a new column with the same data as Strain_ID, but it is now named "Lawn"
HalfTSA_48h_pivot$Spot <- as.factor(HalfTSA_48h_pivot$name)                            #This command creates a new column with the same data as name, but it is now named "Spot"
HalfTSA_48h_pivot$value <- as.numeric(HalfTSA_48h_pivot$value)                         #Making sure everything in the "value" column is a number. If you get an error, you likely have some text in one of your cells that didn't get deleted
HalfTSA_48h <- rep("HalfTSA-48h", 1024)                                                 #Creating a list that repeats "-48h" 1024 times
HalfTSA_48h_pivot$MediaTime <- HalfTSA_48h                                              #Appending the list to the dataset and naming the new columns "MediaTime"

HalfTSA <- rep("HalfTSA", 1024)                                                        #Creating a list that repeats "" 1024 times
HalfTSA_48h_pivot$Media <- HalfTSA                                                     #Appending the list to the dataset and naming it "media"
Time48h <- rep("48h", 1024)                                                    #Creating a list that repeats "48h" 1024 times
HalfTSA_48h_pivot$Time <- Time48h                                                  #Appending the list to the dataset and naming it "Time"

# these comments apply to the next 3 groups of commands in the same way




# HalfTSA data 96h 
HalfTSA_96h <- read.csv("FinalDatasets/HalfTSA_96h.csv", header = TRUE, nrows = 32)
HalfTSA_96h$Strain_ID <- as.character(HalfTSA_96h$Strain_ID)
HalfTSA_96h_pivot <- pivot_longer(HalfTSA_96h, c(2:33), values_drop_na = FALSE)
HalfTSA_96h_pivot$Lawn <- as.factor(HalfTSA_96h_pivot$Strain_ID)
HalfTSA_96h_pivot$Spot <- as.factor(HalfTSA_96h_pivot$name)
HalfTSA_96h_pivot$value <- as.numeric(HalfTSA_96h_pivot$value)
HalfTSA96h <- rep("HalfTSA-96h", 1024)
HalfTSA_96h_pivot$MediaTime <- HalfTSA96h
HalfTSA <- rep("HalfTSA", 1024)
HalfTSA_96h_pivot$Media <- HalfTSA
Time96h <- rep("96h", 1024)
HalfTSA_96h_pivot$Time <- Time96h





# HalfTSA + Fe data 48h 
HalfTSA_Fe_48h <- read.csv("FinalDatasets/HalfTSA_Fe_48h.csv", header = TRUE, nrows = 32, encoding = "UTF-8")
HalfTSA_Fe_48h$Strain_ID <- as.character(HalfTSA_Fe_48h$Strain_ID)
HalfTSA_Fe_48h_pivot <- pivot_longer(HalfTSA_Fe_48h, c(2:33), values_drop_na = FALSE)
HalfTSA_Fe_48h_pivot$Lawn <- as.factor(HalfTSA_Fe_48h_pivot$Strain_ID)
HalfTSA_Fe_48h_pivot$Spot <- as.factor(HalfTSA_Fe_48h_pivot$name)
HalfTSA_Fe_48h_pivot$value <- as.numeric(HalfTSA_Fe_48h_pivot$value)
HalfTSAFe48h <- rep("HalfTSAFe-48h", 1024)
HalfTSA_Fe_48h_pivot$MediaTime <- HalfTSAFe48h
HalfTSAFe <- rep("HalfTSA+Fe", 1024)
HalfTSA_Fe_48h_pivot$Media <- HalfTSAFe
Time48h <- rep("48h", 1024)
HalfTSA_Fe_48h_pivot$Time <- Time48h






# HalfTSA + Fe data 96h 
HalfTSA_Fe_96h <- read.csv("FinalDatasets/HalfTSA_Fe_96h.csv", header = TRUE, nrows = 32)
HalfTSA_Fe_96h$Strain_ID <- as.character(HalfTSA_Fe_96h$Strain_ID)
HalfTSA_Fe_96h_pivot <- pivot_longer(HalfTSA_Fe_96h, c(2:33), values_drop_na = FALSE)
HalfTSA_Fe_96h_pivot$Lawn <- as.factor(HalfTSA_Fe_96h_pivot$Strain_ID)
HalfTSA_Fe_96h_pivot$Spot <- as.factor(HalfTSA_Fe_96h_pivot$name)
HalfTSA_Fe_96h_pivot$value <- as.numeric(HalfTSA_Fe_96h_pivot$value)
HalfTSAFe96h <- rep("HalfTSAFe-96h", 1024)
HalfTSA_Fe_96h_pivot$MediaTime <- HalfTSAFe96h
Fe <- rep("HalfTSA+Fe", 1024)
HalfTSA_Fe_96h_pivot$Media <- HalfTSAFe
Time96h <- rep("96h", 1024)
HalfTSA_Fe_96h_pivot$Time <- Time96h






# concatenating the 4 datasets into one long dataset
HalfTSA_ALL <- rbind(HalfTSA_48h_pivot, HalfTSA_96h_pivot, HalfTSA_Fe_48h_pivot, HalfTSA_Fe_96h_pivot)




















# putting the names of our species in order by the phyla they came from
strain_order_names <- c('Pseudomonas_putida_KT2442', 'Pseudomonas_E05', 'Luteibacter_E22',
  'Lysobacter_E23', 'Stenotrophomonas_R24', 'Dyella_R26', 'Enterobacter_R25', 
  'Variovorax_R27', 'Acidovorax_R28', 'Massilia_S14', 'Massilia_R31', 'Ralstonia_R29', 'Burkholderia_R30',
  'Ensifer_E15', 'Ensifer_R19', 'Agrobacterium_E04', 'Methylobacterium_R20', 'Sphingobium_R21',
  'Hymenobacter_R03', 'Dyadobacter_E01', 'Chryseobacterium_S02', 'Pedobacter_R06', 
  'Exiguobacterium_R17', 'Bacillus_S18', 'Paenibacillus_E12', 'Nocardioides_E09', 
  'Cellulosimicrobium_E16', 'Micrococcus_S10', 'Microbacterium_E13', 'Arthrobacter_R11',
  'Streptomyces_R07', 'Streptomyces_E08')



# Color coding the strains by their phyla
    # darkorange4 = G-proteobacteria    darkblue = B-proteobacteria    
    # darkgreen = A-proteobacteria      purple4 = Bacteroidetes    
    # darkgoldenrod3 = Firmicutes       darkred = Actinobacteria


strain_name_colors <- c("darkorange4", "darkorange4", "darkorange4", "darkorange4", 
                        "darkorange4", "darkorange4", "darkorange4", 
                        "darkblue", "darkblue", "darkblue", "darkblue", "darkblue", "darkblue", 
                        "darkgreen", "darkgreen",
                        "darkgreen", "darkgreen", "darkgreen", "purple4", "purple4",
                        "purple4", "purple4",
                        "darkgoldenrod3", "darkgoldenrod3", "darkgoldenrod3", "darkred",
                        "darkred", "darkred", "darkred", "darkred", "darkred", "darkred")




# Here is the basic formula for making a graph using ggplot. Feel free to customize to show off 
# whatever you're looking at. The best resource for customizing figures in ggplot is Google. If you just
# google "ggplot how to change (the order of columns)" or whatever you're trying to fix, there will 
# always be a good number of posts from either R tutorials or Stack Overflow. If you're looking for 
# specifics on a command, you can also type that command into the "Help" box in the bottom right of R studio

ggplot(data = HalfTSA_ALL, aes(x=factor(Spot, level = strain_order_names),
                           y=factor(Lawn, level = strain_order_names), fill=value) ) + 
  facet_grid(Time ~ Media) +
  geom_tile()  

 

# Here is the graphing format I make all my figures in. Below this chunk of code is what each line does, commented out

ggplot(data = HalfTSA_48h_pivot, aes(x=factor(Spot, level = strain_order_names),
                                 y=factor(Lawn, level = strain_order_names), fill=value) ) + 
  facet_grid(Time ~ Media) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on ") + 
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


ggplot(data = HalfTSA_48h_pivot, aes(x=factor(Spot, level = strain_order_names),                        #pulling data from _All, with "Spot" along the X axis and ordered by the list "strain_order_names"
                           y=factor(Lawn, level = strain_order_names), fill=value) ) +        #along the Y axis is "Lawn", and each of the boxes will be filled in with colors according to their value
  facet_grid(Time ~ Media) +                                                                  #facet_grid splits your plot up by other characteristics you add to your dataset. For example. we run the same analysis on  w/ and w/o iron, so we facet by "media" in one direction and "time" in the other
  geom_tile()  +                                                                              #geom_tile means you want ggplot to make a heatmap. There are many other types of graphs you can make (ex. geom_bar is a bar chart...)
  xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +                               #Adding X and Y axis labels to the figure. Whenever you add text to something in R, it needs to be within 'single' or "double" quotation marks
  ggtitle("Interactions on ") +                                                            #Adding a title to the whole plot
  scale_fill_gradient2(low = "maroon", high = "chartreuse4", mid = "whitesmoke",              #We want a gradient fill for our plots. I set my colors for the low, mid, and highpoint
                       midpoint = 0, space = "Lab",                                           #Setting the midpoint to 0. You must include "scape = "Lab"" also, or it won't run
                       na.value = "grey70", limit = c(-10,10)) +                              #setting a color for missing data, with the limits of the data being from -10 to +10
  labs(fill = "") +                                                                           #this removes the label at the top of the color gradient key
  theme(axis.text.x = element_text(size=8, angle = 45, vjust = 1, hjust = 1, face="italic", color=strain_name_colors),       #Changing the font size, angle, justification, typeface of the labels at the bottom of the graph. Colored by "strain_name_colors"
        axis.text.y=element_text(face="italic", size=8, color=strain_name_colors),            #Changing the typeface, size, and color of the text on the y axis
        plot.title = element_text(hjust = 0.5, size=16),                                      #hjust=0.5 will center your title over the plot. I also increased the font size to 16
        axis.title=element_text(size=12),                                                     #the X and Y axis title font sizes were set to 12
        plot.background = element_rect(fill="white"),                                         #I think white is the default, but here I'm filling in the plot background
        strip.text.x = element_text(face="bold", size=9, angle=0),                            #strip text is the grey tabs at the top and right side of the plot. I like to increase the font size a bit and make it bold
        strip.text.y = element_text(face="bold", size=10, angle=0),                           #adjusting the strip text on the Y axis
        panel.background = element_rect(fill="grey60"),                                       #the panel background is the part behind all your datapoints. Unless you have missing data, you won't be able to see this
        panel.grid = element_blank())  +                                                      #removing the grid that sits behind the data points
   scale_x_discrete(expand = c(0, 0)) + scale_y_discrete(expand = c(0, 0))                    #R likes to leave a little space between your datapoints and the end of the plot, which I think looks messy. This line expands my plot so there is 0 space remaining around all of the edges






########################## SUBSETTING DATASET #####################

# If you only want to plot a subset of your data, you can pop this command in place of "HalfTSA_All" 
# Here, we're subsetting it out so we're only looking at Pseudomonas E05's interactions where it is a spot. 
subset(HalfTSA_ALL, Spot %in% c('Pseudomonas_E05'))


# here's all the bacteria split up by their phyla. Sometimes it can be useful to plot only data for one set of organisms at a time
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


# in this chart, I've subsetted it so only pseudomonad E05 as a spot is shown. 
# it's now much more obvious than in the previous graphs that its inhibition is strongly tied to iron concentrations!
ggplot(subset(HalfTSA_ALL, Spot %in% c('Pseudomonas_E05')), aes(x=factor(Spot, level = strain_order_names),
                           y=factor(Lawn, level =strain_order_names), fill=value) ) + 
  facet_grid(Time ~ Media) +
  geom_tile()  + xlab('Spot, AKA "Producer"') + ylab('Lawn, AKA "Reciever"') +
  ggtitle("Interactions on ") + 
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




# if you want to get creative with your colors (or you don't like the ones I picked), go to the website
# http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf?utm_source=twitterfeed&utm_medium=twitter
# This website lists all the preset colors in R that you can choose from for making graphs!








################ ################ Exporting for Cytoscape/Gephi ################ ################ 

# this is the basic format for how you need to export data for use in Cytoscape and Gephi. 
# the biggest thing is that instead of "spot" and "lawn", that program prefers "Target" and "Source"
# The interaction value in mm will be renamed "Interaction"
# Use write_csv to export the table to the directory you're working in

HalfTSA_48h_Cyto <- read.csv("Data_csvs/_Rep1_48h_forCytoscape_TEST2.csv", header = TRUE, nrows = 32)
HalfTSA_48h_Cyto$Strain_ID <- as.character(HalfTSA_48h_Cyto$Strain_ID)
HalfTSA_48h_Cyto_pivot <- pivot_longer(HalfTSA_48h_Cyto, c(2:33), values_drop_na = FALSE)
HalfTSA_48h_Cyto_pivot$Target <- as.factor(HalfTSA_48h_Cyto_pivot$Strain_ID)
HalfTSA_48h_Cyto_pivot$Source <- as.factor(HalfTSA_48h_Cyto_pivot$name)
HalfTSA_48h_Cyto_pivot$Interaction <- as.numeric(HalfTSA_48h_Cyto_pivot$value)
write_csv(HalfTSA_48h_Cyto_pivot, "_48h_Cyto_pivot.csv")                     # the first value is the name of your dataframe, the second is the name of the thing you're exporting




HalfTSA_StrainID_Target_Key <- read.csv("FinalDatasets/Straind_ID_to_Target.csv", header = TRUE, nrows = 32)
HalfTSA_name_Source_Key <- read.csv("FinalDatasets/name_to_source.csv", header = TRUE, nrows = 32)

HalfTSA_ALL_strainIDrenamed <- merge(HalfTSA_ALL, HalfTSA_StrainID_Target_Key, by.x="Strain_ID", by.y="Strain_ID")
HalfTSA_ALL_TargetandSourceRenamed <- merge(HalfTSA_ALL_strainIDrenamed, HalfTSA_name_Source_Key, by.x="name", by.y="name")

HalfTSA_ALL_TargetandSourceRenamed$Interaction <- as.numeric(HalfTSA_ALL_TargetandSourceRenamed$value)

write_csv(HalfTSA_ALL_TargetandSourceRenamed, "HalfTSA_ALL_forCytoscape_UpdatedNames.csv")



