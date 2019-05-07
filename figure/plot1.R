hhpowerdata$Global_active_power<-as.numeric(as.character(hhpowerdata$Global_active_power))

setwd("./figure")

jpeg("plot1.png",width = 480,height = 480)

hist(hhpowerdata$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main="Global Active Power")

dev.off()