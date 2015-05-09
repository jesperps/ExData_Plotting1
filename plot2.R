source("./getFileAndLoadData.R");
source("./plottingfunctions.R")
png(filename = "plot2.png");
plotGlobalActivePower();
dev.off();