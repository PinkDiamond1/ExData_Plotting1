# If the data file does not exist, download and unzip it
if (!file.exists("household_power_consumption.txt")) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "household_power_consumption.zip")
  unzip(zipfile = "household_power_consumption.zip")
}

# Read only data corresponding to Feb 1 and 2, 2007
data <- read.table("household_power_consumption.txt", nrows = 70000, stringsAsFactors = FALSE, dec = ".", sep = ";", header = TRUE, na.strings = "?")
data <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

# Convert data types
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")
for (i in 3:9) {
  data[, i] <- as.numeric(data[, i])  
}
