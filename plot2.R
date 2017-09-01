data <- read.table("c:/Users/Owner/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSettingData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subSettingData$Date, subSettingData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
householdGlobalActivePower1 <- as.numeric(subSettingData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, householdGlobalActivePower1, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()