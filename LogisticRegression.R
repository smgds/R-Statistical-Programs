library(aod)
library(ggplot2)

mydata <- read.csv("HBATSPLIT60.csv")
head(mydata)

cols <- c("x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13", "x14", "x15", "x16", "x17", "x18") 
mydata[cols] <- lapply(data[cols], factor)
sapply(mydata, class)


mylogit <- glm(x4 ~ x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18, data = mydata, family = "binomial")

options(scipen=999, digits = 3)

summary(mylogit)
