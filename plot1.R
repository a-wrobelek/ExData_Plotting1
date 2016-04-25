setwd() ## set directory for wherever the file "household_power_consumption.txt" is stored
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
str(data)
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] ##extract only information about February 1st and 2nd, 2007

png("plot1.png", width = 480, height = 480)
hist(as.numeric(data2$data2), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
