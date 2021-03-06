dataFilePath <- "./data/household_power_consumption.txt"
dataSet <- read.table(dataFilePath, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
filteredDataSet <- dataSet[dataSet$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(filteredDataSet$Date, filteredDataSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(filteredDataSet$Global_active_power)
png("./images/plot_2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
