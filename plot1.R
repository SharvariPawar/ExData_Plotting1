data <- read.table("c:/Users/Owner/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSettingData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
householdGlobalActivePower <- as.numeric(subSettingData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(householdGlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()