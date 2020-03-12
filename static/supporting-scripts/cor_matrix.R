#loading libraries
library(readxl)
library(car)
library(summarytools)
library(pwr)
library(lsr)
library(stargazer)
library(rgl)
library(DescTools)
library(flipAPI)
library(Hmisc)
library(corrplot)

#readfile
ocean = read.csv(file.choose())

#changing variables into numeric
ocean$Cups..Plates..Paper. <- as.integer(ocean$Cups..Plates..Paper.)
ocean$Cigar.Tips <- as.integer(ocean$Cigar.Tips)

#subset for land
ocean.land <- subset(ocean, ocean$Cleanup.Type == "Land (beach, shoreline and inland)")

#excluding unncessary information
ocean.landsub <- ocean.land[-c(1:2,3:13, 61)]


res2 <- rcorr(as.matrix(ocean.landsub))

corr <- corrplot(res2$r, type="upper", order="hclust", 
         p.mat = res2$P, sig.level = 0.01, insig = "blank", tl.cex=0.3)

