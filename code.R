
### Load Data

load("C:/Users/215217770/Desktop/image/image.RData")


### Library

if (!require("reshape2")) install.packages("reshape2") ; library(reshape2)
if (!require("sp")) install.packages("sp") ; library(sp)
if (!require("rgdal")) install.packages("rgdal") ; library(rgdal)
if (!require("raster")) install.packages("raster") ; library(raster)
if (!require("viridis")) install.packages("viridis") ; library(viridis)
if (!require("gtable")) install.packages("gtable") ; library(gtable)
if (!require("grid")) install.packages("grid") ; library(grid)
if (!require("lubridate")) install.packages("lubridate") ; library(lubridate)
if (!require("RColorBrewer")) install.packages("RColorBrewer"); library(RColorBrewer)
if (!require("ggplot2")) install.packages("ggplot2"); library(ggplot2)
if (!require("dplyr")) install.packages("dplyr"); library(dplyr)


### Read Shapes

setwd("C:/Users/215217770/Desktop/image/shape")

ssa <- readOGR("tentativa3.shp")

ssa1 <- ssa %>% 
  fortify()


ssa1 <- cbind(ssa1, ssa$fclass)  #numero diferente de linhas

# Desejaria que em ssa1 hovuesse a variável fclass correspondente àquele poligono.


###


