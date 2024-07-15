
data = read.csv(file = file.choose(),header = T)
View(data)
Loan <- read.csv("C:/Users/USER/Desktop/Data analytics/datasets/Loan.csv")
View(Loan)


data1 =read.csv(file = file.choose(),header = T)
View(data1)
data2 =read.table(file = file.choose(),header = T,sep=",")
View(data2)

library(readxl)
cycle <- read_excel("C:/Users/USER/Desktop/Data analytics/datasets/cycle.xlsx")
View(cycle)
