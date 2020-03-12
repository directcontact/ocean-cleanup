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

#readfile
ocean=read.csv(file.choose())

#checking cleanup types
freq(ocean$Cleanup.Type)

#changing variables into numeric
ocean$Cups..Plates..Paper. <- as.integer(ocean$Cups..Plates..Paper.)
ocean$Cigar.Tips <- as.integer(ocean$Cigar.Tips)


#subset for land
ocean.land <- subset(ocean, ocean$Cleanup.Type == "Land (beach, shoreline and inland)")

#excluding unncessary information
ocean.landsub <- ocean.land[-c(1:2,4:13, 61)]

#aggregate each item by state
ocean.landsub.agg <- aggregate(ocean.landsub[c(2:48)], by = list(ocean.landsub$State), FUN=sum, na.rm=FALSE)

#Finds the column that has max number for each row
ocean.landsub.agg$top_item <- colnames(ocean.landsub.agg)[apply(ocean.landsub.agg,1,which.max)]

#most popular garbage for land in each state
ocean.land.topitembystate <- ocean.landsub.agg[c(1,49)]


#subset for underwater
ocean.underwater <- subset(ocean, ocean$Cleanup.Type == "Underwater")

#excluding unncessary information
ocean.underwatersub <- ocean.underwater[-c(1:2,4:13,61)]

#aggregate each item by state
ocean.underwatersub.agg <- aggregate(ocean.underwatersub[c(2:48)], by = list(ocean.underwatersub$State), FUN=sum, na.rm=FALSE)

#Finds the column that has max number for each row
ocean.underwatersub.agg$top_item <- colnames(ocean.underwatersub.agg)[apply(ocean.underwatersub.agg,1,which.max)]

#most popular garbage for underwater in each state
ocean.underwater.topitembystate <- ocean.underwatersub.agg[c(1,49)]


#subset for watercraft
ocean.watercraft <- subset(ocean, ocean$Cleanup.Type == "Watercraft (powerboat, sailboat, kayak or canoe)")

#excluding unncessary information
ocean.watercraftsub <- ocean.watercraft[-c(1:2,4:13, 61)]

#aggregate each item by state
ocean.watercraftsub.agg <- aggregate(ocean.watercraftsub[c(2:48)], by = list(ocean.watercraftsub$State), FUN=sum, na.rm=FALSE)

#Finds the column that has max number for each row
ocean.watercraftsub.agg$top_item <-colnames(ocean.watercraftsub.agg)[apply(ocean.watercraftsub.agg,1,which.max)]

#most popular garbage for watercraft in each state
ocean.watercraft.toptembystate <- ocean.watercraftsub.agg[c(1,49)]
