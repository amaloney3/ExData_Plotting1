setwd("C:/Users/Andrew/Desktop/Data")
power <- read.csv("power.csv")
par(mfrow=c(2,2))
plot(d, power$Global_active_power, type = "l", ylab = "Global Active Power", xlab="")
plot(d, power$Voltage, type = "l", ylab = "Voltage", xlab="")
plot(d, power$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="")
lines(d, power$Sub_metering_2, col="red")
lines(d, power$Sub_metering_3, col="blue")
legend(x ="topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"),
       lty=c(1,1,1)
)
plot(d, power$Global_reactive_power, type="l", xlab="", ylab="Global_reactive_power")
dev.copy(png, file = "plot4.png", width=480, height=480)
dev.off()