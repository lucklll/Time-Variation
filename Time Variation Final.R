
comNTD$Date<-as.POSIXct(comNTD$Date,format="%d/%m/%Y %H:%M")
df.ntd<- melt(comNTD,"Date")
ggplot(df.ntd, aes(Date, value, colour = variable)) + geom_line() 
dev.copy(png,'Time Variation NTD.png',width = 900, height = 480)
dev.off()

comTD$Date<-as.POSIXct(comTD$Date,format="%d/%m/%Y %H:%M")
df.td<- melt(comTD,"Date")
ggplot(df.td, aes(Date, value, colour = variable)) + geom_line() 
dev.copy(png,'Time Variation TD.png',width = 900, height = 480)
dev.off()

