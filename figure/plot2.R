library(lubridate)

hhpowerdata$Date<-dmy(hhpowerdata$Date)

hhpowerdata$Weekday<-weekdays(hhpowerdata$Date)

jpeg("plot2.png",width = 480,height = 480)

plot(hhpowerdata$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)",xlab="",xaxt="n")
axis(side = 1,at=c(0,1440,2880), labels = c("Thu","Fri","Sat"))

dev.off()