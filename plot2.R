# Exploratory Data analysis - Week 1 - Project

# Scrit for the second plot of the assignment
# Read file, transform to table and subset the dates of interest
File <- "household_power_consumption.txt"
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetDate <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Optionnal: to be used only if system is not in english by default
Sys.setlocale("LC_TIME", "English_United States")

# Converting the Date and Time variables to Date/Time classes
datetime <- strptime(paste(subSetDate$Date, subSetDate$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Building plot and generating png file
gap <- as.numeric(subSetDate$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()