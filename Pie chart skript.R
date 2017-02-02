library(readr)
ludata <- read_csv("C:/Users/kubelova/Desktop/A1 IK Kosetice/Chemical composition CE1/KoSu Composition/KoSu Composition.csv")

graphics.off()


slices <- df2[1:5,6]
print(slices)
lbls <- df1[1:5,1]
print(lbls)
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
print(lbls)
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="NTD Composition")

dev.copy(png,'Composition NTD.png')
dev.off()
graphics.off()


slices <- df2[7:11,6]
print(slices)
lbls <- df1[7:11,1]
print(lbls)
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
print(lbls)
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="TD Composition")

dev.copy(png,'Composition TD.png')
dev.off()
graphics.off()