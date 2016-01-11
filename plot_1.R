dataFilePath <- "./data/household_power_consumption.txt"
dataSet <- read.table(dataFilePath, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
filteredDataSet <- dataSet[dataSet$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(filteredDataSet$Global_active_power)
png("./images/plot_1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

