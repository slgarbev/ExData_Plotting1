hhpowerdata$Voltage<-as.numeric(as.character(hhpowerdata$Voltage))
hhpowerdata$Global_reactive_power<-as.numeric(as.character(hhpowerdata$Global_reactive_power))


jpeg("plot4.png",width = 480,height = 480)

par(mfrow=c(2,2))

## 1st Graph

plot(hhpowerdata$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)",xlab="",xaxt="n")
axis(side = 1,at=c(0,1440,2880), labels = c("Thu","Fri","Sat"))

## 2nd Graph

plot(hhpowerdata$Voltage, type = "l", ylab = "Voltage",xlab="datetime",xaxt="n")
axis(side = 1,at=c(0,1440,2880), labels = c("Thu","Fri","Sat"))

## 3rd Graph
plot(hhpowerdata$Sub_metering_1, type = "l", ylab = "Energy sub metering",xlab="",xaxt="n")
lines(hhpowerdata$Sub_metering_2, col="red")
lines(hhpowerdata$Sub_metering_3, col="blue")
legend("topright", lty=1,col = c("black","blue","red"),legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
axis(side = 1,at=c(0,1440,2880), labels = c("Thu","Fri","Sat"))

## 4th Graph

plot(hhpowerdata$Global_reactive_power, type = "l", ylab = "Global_reactive_power",xlab="datetime",xaxt="n")
axis(side = 1,at=c(0,1440,2880), labels = c("Thu","Fri","Sat"))


dev.off()