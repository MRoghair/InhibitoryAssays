# Sender Receiver Asymmetry Histograms


setwd("~/Desktop/InhibitoryAssays/SenderReceiverAsymmetry")
library(tidyverse)


################################ Import data ###############################

R2A_48h_SendReceive <- read.csv("R2A_forHistograms.csv", header = TRUE)
R2A_48h_SendReceive_pivot <- pivot_longer(R2A_48h_SendReceive, c(2:3), values_drop_na = FALSE)


sender_variance <- var(R2A_48h_SendReceive$Sender.degree)
receiver_variance <- var(R2A_48h_SendReceive$Receiver.degree)
N = 32
total_interactions_possible <- 32*31 
total_inhib_interactions <- 348

interaction_freq <- total_inhib_interactions/total_interactions_possible

Q = ((receiver_variance/N) - (sender_variance/N)) / (interaction_freq*(1 - interaction_freq))








library(plyr)
mu_R2A <- ddply(R2A_48h_SendReceive_pivot, "name", summarise, grp.mean=mean(value))
head(mu)

ggplot(R2A_48h_SendReceive, aes(x=Receiver.degree)) + 
  geom_histogram(aes(y=..density..), colour="black", fill="white", binwidth=1) +
  geom_density(alpha=.2, fill="#FF6666") 



ggplot(R2A_48h_SendReceive_pivot, aes(x=value, fill=name)) + 
  geom_histogram(aes(y = ..ndensity.., ), colour="black", alpha=.6, binwidth=3) +
  geom_density(alpha=.2, aes(y=..scaled..)) +
  facet_grid(factor(name, level = c("SenderDegree", "ReceiverDegree")) ~ .) +
  xlab('Degree') + ylab('Density') +
  ggtitle("Sender and receiver degree distributions on R2A at 48h") + 
  scale_color_manual(values=c("maroon", "chartreuse4"))+
  scale_fill_manual(values=c("maroon", "chartreuse4"))+
  scale_x_continuous(limits = c(0, 32), expand = c(0, 0)) + 
  scale_y_continuous(expand = c(0, 0.1)) +
  geom_vline(data=mu_R2A, aes(xintercept=grp.mean),
             linetype="dashed") +
  theme(plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=12, angle=0), 
        strip.text.y = element_text(face="bold", size=12, angle=270),
        legend.position = "none")




####################### KB ##########################


KB_48h_SendReceive <- read.csv("KB_48h_forHistograms.csv", header = TRUE)
KB_48h_SendReceive_pivot <- pivot_longer(KB_48h_SendReceive, c(2:3), values_drop_na = FALSE)


library(plyr)
mu_KB <- ddply(KB_48h_SendReceive_pivot, "name", summarise, grp.mean=mean(value))
head(mu_KB)

ggplot(R2A_48h_SendReceive, aes(x=Receiver.degree)) + 
  geom_histogram(aes(y=..density..), colour="black", fill="white", binwidth=1) +
  geom_density(alpha=.2, fill="#FF6666") 



ggplot(KB_48h_SendReceive_pivot, aes(x=value, fill=name)) + 
  geom_histogram(aes(y = ..ndensity..), colour="black", alpha=.6, binwidth=3) +
  geom_density(alpha=.2, aes(y=..scaled..)) +
  facet_grid(name ~ .) +
  xlab('Degree') + ylab('Density') +
  ggtitle("Sender and receiver degree distributions on KB at 48h") + 
  scale_color_manual(values=c("chartreuse4", "maroon"))+
  scale_fill_manual(values=c("chartreuse4", "maroon"))+
  scale_x_continuous(limits = c(0, 32), expand = c(0, 0)) + 
  scale_y_continuous(expand = c(0, 0.1)) +
  geom_vline(data=mu_KB, aes(xintercept=grp.mean),
             linetype="dashed") +
  theme(plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=12, angle=0), 
        strip.text.y = element_text(face="bold", size=12, angle=270))


###################### Concatenate R2A and KB 48h data #######################

R2AandKB_48h_SendReceive_pivot <- rbind(R2A_48h_SendReceive_pivot, KB_48h_SendReceive_pivot)



ggplot(R2AandKB_48h_SendReceive_pivot, aes(x=value, fill=name)) + 
  geom_histogram(aes(y = ..ndensity..), colour="black", alpha=.6, binwidth=3) +
  geom_density(alpha=.2, aes(y=..scaled..)) +
  facet_grid(name ~ .) +
  xlab('Degree') + ylab('Density') +
  ggtitle("Sender and receiver degree distributions on R2A and KB at 48h") + 
  scale_color_manual(values=c("chartreuse4", "maroon"))+
  scale_fill_manual(values=c("chartreuse4", "maroon"))+
  scale_x_continuous(limits = c(0, 32), expand = c(0, 0)) + 
  scale_y_continuous(expand = c(0, 0.1)) +
  geom_vline(data=mu_KB, aes(xintercept=grp.mean),
             linetype="dashed") +
  theme(plot.title = element_text(hjust = 0.5, size=16),
        axis.title=element_text(size=12),
        plot.background = element_rect(fill="white"),
        strip.text.x = element_text(face="bold", size=12, angle=0), 
        strip.text.y = element_text(face="bold", size=12, angle=270))
