

library(readr)

read_csv("C:/Users/Gazal V/Documents/mtcars.csv")
cardata=read_csv("mtcars.csv")

cardata=read_csv("C:/Users/Gazal V/Documents/R files/mtcars.csv")

cardata=read_csv("mtcars.csv",skip=3)
cardata=read_delim("C:/Users/Gazal V/Documents/mtcars.txt")
cardata = read_delim('mtcars.txt',delim=" ")

## reading excel##
library(readxl)
read_excel("mtcars.xlsx")
boston_data = read_excel("boston.xlsx")
boston_data
## Json file

library(jsonlite)
json_data=''

library(httr)
r=GET("http://httpbin.org/get")
r
content(r,'raw')

## webscraping
install.packages('rvest')
library('rvest')
url<-'https://www.imdb.com/search/title?count=100&release_date=2017,2017&title_type=feature'
web_data = read_html(url)
web_data
rank_data_html = html_nodes(web_data, '.text-primary')
rank_data_html

rank_data = html_text(rank_data_html)
rank_data
##mysql
install.packages("RMySQL")
library(RMySQL)
#mysqlconnection =dbConnect(MySQL(), user="root", password='',
 #                          dbname="gazal"
 #                          host="localhost")

## data manipulation
## inbuilt dataset
iris
##accesing columns
iris$Species
### 2nd method 
##[rows,coloumns]
iris[,'Species']
iris[,2]
### 3rd method ##
iris[['Species']]

## rows
iris[3,]
iris[3,'Sepal.Length']
iris[3,c('Sepal.Length','Species')]
##rows from 10-20
iris[10:20,2]
iris[10:20,2:4]
## summary statistics of numerical column
summary(iris$Sepal.Length)

summary(iris$Species)
mean(iris$Sepal.Length)
meadian(iris$Sepal.Width)

## mean of setosa
iris$Species == 'setosa'
mean(iris$Sepal.Length[iris$Species == 'setosa'])
mean(iris$Sepal.Length[iris$Species == 'versicolor'])
mean(iris$Sepal.Length[iris$Species == 'virginica'])

mean(iris$Petal.Width[iris$Species == 'setosa'])
mean(iris$Petal.Width[iris$Species == 'versicolor'])
mean(iris$Petal.Width[iris$Species == 'virginica'])

by(iris$Sepal.Length,iris$Species,mean)
by(iris$Sepal.Length,iris$Species,sd)

by(iris$Sepal.Length,iris$Species,summary)

## subset the data based on filter(sepal length >6)
mask = iris$Sepal.Length>6
mask
iris[mask, ]

mask2=iris$Species =="virginica"
iris[mask2, ]

mask3 = iris$Sepal.Length>6 & iris$Species =="virginica"
iris[mask3, ]

## Addding coloumns
iris$total_sepal = iris$Sepal.Length + iris$Sepal.Width
iris
iris$total_petal = iris$Petal.Length + iris$Petal.Width
iris

## condition =  total sepal>10 "yes"

iris$sepal_cond = ifelse(iris$total_sepal>10,"Yes","NO")
iris

##aggragating the data

library(dplyr)

summary_data = iris %>%
 group_by("Species") %>%
 summarise(mean_var=mean(iris$Sepal.Length))
summary_data

## sort the data using columns
## sort the data in the ascending of the sepal width

sorted_data = iris[order(iris$Sepal.Width),]
sorted_data

iris[order(iris$Sepal.Width,iris$Petal.Width),]

## duplicate 
duplicated(iris)
iris[duplicated(iris), ]
unique_data =iris[!duplicated(iris),]
unique_data

## sampling 
# train (75%)and test

0.2 * nrow(iris)
sampled_data =sample(nrow(iris),size=0.2*nrow(iris))
sampled_data

subset_data =iris %>% slice(20:40)
subset_data

#merging operations
#combine rows vertical merge
df1 = iris[1:25,]
df1
df2 =iris[100:140,]
df2
rbind(df1,df2)
## combine 2 dat frames by columns
#horizontal merge

#combined_data= 5cols
df3 =iris[,1:2]
df3
df4 = iris[,4:6]
df4
combineddata=cbind(df3,df4)
combineddata

## handling missing values
mtcars
is.na(mtcars)
cleaned=na.omit(mtcars)
cleaned

any(is.na(mtcars))
sum(is.na(mtcars))

mean(mtcars$mpg, na.rm=T)
mtcars$mpg[is.na(mtcars$mpg)] = mean(mtcars$mpg, na.rm=T)

cleaned_data=na.omit(mtcars)


## outliers (percentiles or quantiles)
quantiles=quantile(mtcars$mpg, c(0.1,0.99))
quantiles[2]
mtcars$mpg<10.4
mtcars$mpg[mtcars$mpg<10.4]=10.4

mtcars$mpg[mtcars$mpg>33.435] =33.435









