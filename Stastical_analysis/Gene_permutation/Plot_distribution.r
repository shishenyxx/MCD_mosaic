# Plotting for distributions
raw<-read.table(file="10k_permutations",header=F)

names(raw)

library(ggplot2)

ggplot(raw,aes(x=V1))+
	geom_density()+
	geom_vline(xintercept=15,linetype=2)+
	xlim(-1,20)+
	theme_classic()
