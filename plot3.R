setwd("C:/Users/Andrew/Desktop/Data")
power <- read.csv("power.csv")
plot(d, power$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="")
lines(d, power$Sub_metering_2, col="red")
lines(d, power$Sub_metering_3, col="blue")
legend(x ="topright",
               legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               col=c("black", "red", "blue"),
               lty=c(1,1,1)
        )
dev.copy(png, file = "plot3.png", width=480, height=480)
dev.off()
