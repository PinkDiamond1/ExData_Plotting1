source("common.R")

# Draw and save the plot
plot(data$DateTime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(device = png, filename = "plot2.png", width = 480, height = 480)
dev.off()
