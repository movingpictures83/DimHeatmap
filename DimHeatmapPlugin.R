library(dplyr)
library(Seurat)
library(patchwork)


input <- function(inputfile) {
   pbmc <<- readRDS(inputfile)  
}

run <- function() {}

output <- function(outputfile) {
 pdf(outputfile)
DimHeatmap(pbmc, dims = 1:15, cells = 500, balanced = TRUE)
#print(str(pbmc))
write.csv(pbmc@commands$RunPCA.RNA@params$features, paste(outputfile, "csv", sep="."))
}



