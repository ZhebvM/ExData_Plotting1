# Coursera Data Science Specialization 
# Exploratory Data Analysis
# Course Project 1
# Plot 4 

# Reading data 

dat <- read.table("household_power_consumption.txt", header=TRUE, sep = ";",na.strings = "?")
dat1 <- dat[dat$Date=="1/2/2007"|dat$Date=="2/2/2007",]
rm(dat)

# Reading date/time info in format 'm/d/y h:m:s'

dat1$x <- paste(dat1$Date, dat1$Time)
dat1$xx <- strptime(dat1$x, "%d/%m/%Y %H:%M:%S")

# Constructing plot 4

png(file="plot4.png", height=480, width=480)
par(mfrow=c(2,2))

plot(dat1$xx, dat1$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(dat1$xx, dat1$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(dat1$xx, dat1$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dat1$xx, dat1$Sub_metering_2, col="red")
lines(dat1$xx, dat1$Sub_metering_3, col="blue")
legend(x = "topright", bty="n", lty=c(rep(1, 3)), col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(dat1$xx, dat1$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", ylim=c(0,0.5))

dev.off()
