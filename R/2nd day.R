A=3
B=4
A%%B

##transpose
t(A)
##inverse of matrix
A= matrix(c(1,0,0,0,2,0,0,0,3),nrow = 3,ncol=3)

A
solve(A)
##stacking of matrices

A=matrix(0,nrows=3,ncol=3)
A
B =matrix(1,nrow=3,ncol=3)
B
#Vertical stacking
c=rbind(A,B)
c
##horizontal Stacking
D=cbind(A,B)
D
##Functions
A=matrix(seq(1,9),nrow=3,ncol=3)
A
sqrt(A)
sum(A)
mean(A)
median(A)
max(A)

##apply
apply(A,1,max)
A
apply(A,2,mean)

##arrays
dim(A)
A=array(seq(1,27),dim=c(3,3,3))
A
### 2nd column from the Ist slice
A[,2,1]
#ist slice,3rd
A[,,1]
A[,,3]
## Ist slice and 2nd slice
A[,,1:2]
apply(A,3,sum)
###all the functionalities of matrices can be applied on the arrays as well
## so far storing the elements all of the same type
x=list(a='string value',b=5,5,c=TRUE)
x
x$a
x[]
x[[1]]
x[[2]]
x[[3]]
x[['c']]
x[['b']]



#Conditional statements
x=-3
x
if(x<0){
  print("x is a negative value")
}
y=3
y
if(y>0){
  print("x is a +tive value")
}
## if else
if(x<0){
  print('-ve')
}else{
  print(+ve)
}
x=-5
if(x<0){
  print('-ve')
}else if (x==0){
  print('zero')
}else{
  print('+ve')
}
## consider an example number divisible by 2 or 3
x=9
if(x %% 2==0){
  print('x is divisible by 2')
}else if (x %% 3==0){
  print('x is divisible by 3')
}else{
  print('Not divisible')
}

##consider 2 variables
li = 15
fb= 9
##social media score "sms"

# if both li and fb are 15 or higher set'sms' = 2(li+fb)
# if both li and fb are strictly below 10 set "sms"= (li+fb)/2

if(li>=15 & fb>=15){
sms=2*(li+fb)
}else if (li<10 & fb<10){
  sms=(li+fb)*0.5
}else{
  sms=li+fb
}
print(sms)


# Write a statement that prints "Rotten!" if the input is equal to or larger than 1 and less than 60,
# "Fresh" if the input is equal to or larger than 60 and less than 75,
# and "Certified Fresh!" if the input is equal to or larger than 75.
# For any other value, the statement should print "Please input a number between 1 and 100"

val= 75
if(val>=1 & val<60){
  print("Rotten!")
}else if (val>=60 & val<75){
  print("Fresh")
}else if(val>=75 & val<=100){
  print("Certified Fresh")
}else{
  print('Please  enter a number b/w 1-100')
}
val=-3

#loops

Fruits=c('apple','chikku','berry','grapes','orange')
Fruits

for(i in Fruits){
  print(i)
}
### polynomial of x 1 to 6 and store to vector

vector1=c()
vector1

for(i in seq(1,6)){
  vector1[i]= i*i
}
vector1
## conditional statements and loops

x=c(2,5,3,9,8,11,44,47,67,95,33,12,45)
x
count=0
for (i in x){
  if (i %% 2 ==0)
    count=count+1
}
print(count)
count_e=0
count_o=0
for (i in x){
  if (i %% 2 ==0)
    count_e=count_e+1
  else
    count_o=count_o+1
}
print(count_e)
print(count_o)

#while loop
# sum of numbers
n=10
i=1
sum=0

while(i<=10){
  sum=sum+i
  i=i+1
}
print(sum)
x
mean(x)

title = c("star wars", "the empire strikes back", "mummy", "mummy returns",
          "sixth sense", "titanic", "LOR1", "LOR2")

year = c(1977, 1980, 1983, 1999, 2000, 2002, 2004, 2008)

length = c(121, 124, 133, 133, 142, 140, 143, 123)

box_office = c(787, 534, 572, 1027, 657, 845, 1234, 1235)


my.data = data.frame(title, year, length, box_office)
my.data

str(my.data)

names(my.data)

my.data$title
my.data$year
my.data$length
my.data$box_office

nrow(my.data)
ncol(my.data)


my.data[ , c(1,4)]
my.data[2:7, ]
my.data[2:7, 2:4]
my.data[c(3,5,8),c(1,4)]















