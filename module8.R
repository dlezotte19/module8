
library(readr)
Dataset <- read_csv("C:/Users/Dnllz/Downloads/Dataset.txt")
View(Dataset)
library(plyr)
x <- Dataset
y <- ddply(x,"Sex",transform, Grade.Average=mean(Grade))
write.table(y,"Sorted_Average")
write.table(y,"Sorted_Average",sep=",")
newx = subset(x,grepl("[iI]",x$Name))
write.table(newx,"DataSubset",sep=",")