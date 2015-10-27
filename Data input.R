
install.packages("data.table")
library(data.table)

# Load Data
setwd("~/Documents/Kaggle/usa census/data/pums")
data <- fread("ss13husa.csv")

dim(data)

# plot income vs fuel cost
plot(data$FINCP,data$FULP)
