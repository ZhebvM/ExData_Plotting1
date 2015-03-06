# Coursera Data Science Specialization 
# Exploratory Data Analysis
# Course Project 1
# Plot 1 

# Reading data 

dat <- read.table("household_power_consumption.txt", header=TRUE, sep = ";",na.strings = "?")
dat1 <- dat[dat$Date=="1/2/2007"|dat$Date=="2/2/2007",]
rm(dat)

# Constructing plot 1

png(file="plot1.png", height=480, width=480)
hist(dat1$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab="Frequency", col="red")
dev.off()
