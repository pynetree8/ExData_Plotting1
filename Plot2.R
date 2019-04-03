#read in data
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
#convert data to legible format
data$DateTime<-paste(data$Date, data$Time)
data$DateTime<-strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")
#set to particular duration
start<-which(data$DateTime==strptime("2007-02-01", "%Y-%m-%d"))
end<-which(data$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))
data2<-data[start:end,]

#Make png of plot2
plot(data2$DateTime, as.numeric(as.character(data2$Global_active_power)),
     type='l',ylab="Global Active Power (Kilowatts)", xlab="")

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()