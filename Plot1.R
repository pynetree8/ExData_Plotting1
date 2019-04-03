data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
#Make plot 1
hist(intdates$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
#Make png of plot1
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()