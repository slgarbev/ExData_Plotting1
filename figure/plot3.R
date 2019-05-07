hhpowerdata$Sub_metering_1<-as.numeric(as.character(hhpowerdata$Sub_metering_1))
hhpowerdata$Sub_metering_2<-as.numeric(as.character(hhpowerdata$Sub_metering_2))
hhpowerdata$Sub_metering_3<-as.numeric(as.character(hhpowerdata$Sub_metering_3))

jpeg("plot3.png",width = 480,height = 480)

plot(hhpowerdata$Sub_metering_1, type = "l", ylab = "Energy sub metering",xlab="",xaxt="n")
lines(hhpowerdata$Sub_metering_2, col="red")
lines(hhpowerdata$Sub_metering_3, col="blue")
legend("topright", lty=1,col = c("black","blue","red"),legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
axis(side = 1,at=c(0,1440,2880), labels = c("Thu","Fri","Sat"))

dev.off()