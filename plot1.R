source("common.R")

# Draw histogram and save the plot
hist(data$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
dev.copy(device = png, filename = "plot1.png", width = 480, height = 480)
dev.off()
