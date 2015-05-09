source("./getFileAndLoadData.R");
source("./plottingfunctions.R");
png(filename = "plot3.png");
plotEnergysubmetering();
dev.off();