if (!file.exists("./household_power_consumption.txt")){
        url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip";
        download.file(url,destfile="./electricPowerConsumption.zip",method="curl");
        unzip("./electricPowerConsumption.zip");
}
if(!exists("pc")){
        pc<-read.table("./household_power_consumption.txt", sep=";", header=TRUE,na.strings="?");
        subpc<-pc[pc$Date == "1/2/2007" | pc$Date == "2/2/2007",];
}