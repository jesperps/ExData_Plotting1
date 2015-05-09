source("./getFileAndLoadData.R");
source("./plottingfunctions.R")
png(filename = "plot4.png");
par(mfrow = c(2, 2));
plotGlobalActivePower();
plotVoltage();
plotEnergySubmetering(legendBoxLineWidth<-0);
plotGlobalReactivePower();
dev.off();