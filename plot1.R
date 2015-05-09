source("./getFileAndLoadData.R");
png(filename = "plot1.png");
hist(
        subpc$Global_active_power
        ,col="red"
        ,main="Global Active Power"
        ,xlab="Global Active Power (kilowatts)"
);
dev.off();