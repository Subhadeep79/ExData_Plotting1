#reading_data

power<- read.table("household_power_consumption.txt", skip=1, sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- power[power$Date %in% c("1/2/2007","2/2/2007") ,] ##new data set 

#creating the plot
global_active_power<-as.numeric(subpower$Global_active_power)
png("plot1.png", width=480, height=480)
hist(global_active_power, col = "red",main = "Global Active Power", xlab="Global Active Power(kilowatts)")
dev.off()
