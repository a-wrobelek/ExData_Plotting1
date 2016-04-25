setwd() ## set directory for wherever the file "household_power_consumption.txt" is stored
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
str(data)
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot2.png", width = 480, height = 480)
x <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
y <- as.numeric(data2$Global_active_power)
plot(x, y, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

