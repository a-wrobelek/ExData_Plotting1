setwd() ## set directory for wherever the file "household_power_consumption.txt" is stored
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
str(data)
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot3.png", width = 480, height = 480)
x <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
y1 <- as.numeric(data2$Sub_metering_1)
y2 <- as.numeric(data2$Sub_metering_2)
y3 <- as.numeric(data2$Sub_metering_3)
plot(x, y1, type="l", xlab="", ylab="Energy sub metering")
lines(x, y2, type="l", col = "red")
lines(x, y3, type="l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
