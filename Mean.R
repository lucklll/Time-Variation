library(readr)
ludata <- read_csv("C:/Users/kubelova/Desktop/A1 IK Kosetice/Chemical composition CE1/KoWi Composition/KoWi chemcom.csv")
str(ludata)

listcol<-colnames(ludata[,2:ncol(ludata)])
df1<-as.data.frame(listcol)



a<-vector()
a<-as.numeric(a)
ma<-vector()
ma<-as.numeric(ma)
mi<-vector()
mi<-as.numeric(mi)
me<-vector()
me<-as.numeric(me)
std<-vector()
std<-as.numeric(std)


for (x in 2:(ncol(ludata)-1)) 
  {
  a[x]<-mean(ludata[[x]],na.rm=TRUE)
  ma[x]<-max(ludata[[x]],na.rm=TRUE)
  mi[x]<-min(ludata[[x]],na.rm=TRUE)
  me[x]<-median(ludata[[x]],na.rm=TRUE)
  std[x]<-sd(ludata[[x]],na.rm=TRUE)
  
}


for (i in 2:length(a))
{df1$Average[i-1]<-a[i]
df1$Max[i-1]<-ma[i]
df1$Min[i-1]<-mi[i]
df1$Median[i-1]<-me[i]
df1$StD[i-1]<-std[i]

}

sh<-vector()
sh<-as.numeric(std)

totNTD<-df1[6,2]
totTD<- df1[12,2]

for (x in 1:6) 
{
  df1$share[x]<-df1[x,2]/totNTD
  
  }
for (x in 7:12) 
{
  df1$share[x]<-df1[x,2]/totTD
 
}

write.csv(df1, file = "KoWi summary.csv")


df2 <- cbind(df1[,2:7])
comNTD <- cbind(ludata[,1:6])
rm(comTD)
comTD<-data.frame()
comTD <- cbind(ludata[,1])
comTD[,2:6] <- cbind(ludata[,8:12])

