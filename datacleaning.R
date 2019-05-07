hhpower<-read.table("household_power_consumption.txt",sep = ";",header = T)

hhpower1<-hhpower[hhpower$Date=="1/2/2007",]
hhpower2<-hhpower[hhpower$Date=="2/2/2007",]
hhpowerdata<-rbind(hhpower1,hhpower2)
