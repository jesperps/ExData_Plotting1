plotGlobalActivePower<-function() {
        plot(
                x=as.POSIXct(strptime(
                        paste(subpc$Date,subpc$Time)
                        ,"%d/%m/%Y %H:%M:%S"
                        )
                )
                ,y=subpc$Global_active_power
                ,type="l"
                ,ylab = "Global Active Power (kilowatts)"
                ,xlab = ""
        );
};

plotEnergySubmetering<-function(legendBoxLineWidth = 1) {
        times<-as.POSIXct(strptime(
                paste(subpc$Date,subpc$Time)
                ,"%d/%m/%Y %H:%M:%S"
        )
        );
        plot(
                x=times
                ,y=subpc$Sub_metering_1
                ,type="l"
                ,ylab = "Energy sub metering"
                ,xlab = ""
        );
        points(
                x=times
                ,y=subpc$Sub_metering_2
                ,type="l"
                ,col="red"
        );
        points(
                x=times
                ,y=subpc$Sub_metering_3
                ,type="l"
                ,col="blue"
        );
        legend(
                "topright"
                ,col = c("black","blue", "red")
                ,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
                ,lwd=1
                ,box.lwd=legendBoxLineWidth
        );
};

plotVoltage<-function(){
        plot(
                x=as.POSIXct(strptime(
                        paste(subpc$Date,subpc$Time)
                        ,"%d/%m/%Y %H:%M:%S"
                )
                )
                ,y=subpc$Voltage
                ,type="l"
                ,ylab = "Voltage"
                ,xlab = "datetime"
        );  
};

plotGlobalReactivePower<-function(){
        plot(
                x=as.POSIXct(strptime(
                        paste(subpc$Date,subpc$Time)
                        ,"%d/%m/%Y %H:%M:%S"
                )
                )
                ,y=subpc$Global_reactive_power
                ,type="l"
                ,ylab = "Global_reactive_power"
                ,xlab = "datetime"
        ); 
}
