print(2+3)
print(3*4)



### basic Arithmatic operations

print(2+3)

print(2-3)


print(2*3)

print(2/3)

print(2^5)

print(21 %% 10)

typeof(21%%10)

print(2 < 3)

print(2 > 3)

print(2==3)

print(FALSE)

typeof(FALSE)

typeof(2/3)

print("Ummar Shaik")
typeof("Ummar Shaik")



##### Built in functions

exp(1)   # exponent

log(10)

log2(10)   #### log 10 to the base 2


abs(-10)


sqrt(16)


##### generating sequence of numbers 


print(1:900)

print(seq(1,900))

print(seq(from = 1, to = 900))


#### variables 

#### the result of an expression can be stored or assign it to a named varibale with the <- or = operators

x <- 2

print(x)


y <- x + 3

print(y)

x <- x + 1

print(x)

x <- x+1
print(x)
#### letters, digits, "_", .


first_name <- "Ummar"

last.name <- "Shaik"

friend_name  <- "Kiran"

####  c, q, t , median

q<-1

q()



print(x)



##### Data Structures in R

#### vectors , matrices, lists, Data Frames 


x = 3

print(x)



#### vectors - one dimensional array of scalers



#### three basic functions
#### 1. c(....)
#### 2. seq(from, to, by)  
#### 3. rep(x, times)   (repeat)


x = seq(1,20, by = 3)
typeof(x)
print(x)


y = rep(3,10)
print(y)


z = c(6,2,8,3,56,12,65)

print(z)

z = c(y, x)

print(z)


x = 1:20
print(x)

#### : operator takes precedence over operators such as + and -. Use parenthesis when you are having doubt

x = 1:(20+1)
print(x)


##### indexing into vectors


x = seq(10,20)
print(x)

x[9]    ### 9th ppsition

x[11]   ### 11th position


x[12]   ### there is no index



### slicing


x[2:5]


x[-1]

### boolean indexing

print(x)

print(x > 11)    #### boolean result

x[x>11]     ####    boolean indexing


x[c(3,5,7)]    #### with indexing specific values

x[-c(3,5,7)]   #### without some specific values 



#### index of the values where x is greater than 11

ind = which(x > 11)
print(ind)     #### resulting the posiitons


###### what happens if i use arithmetic operators vectors



x = c(1,2,3)

y = c(4,5,6)


print(x+y)



print(y-x)


print(y*x)


print(y/x)


print(y^x)


print(1:4)
print(1:2)
print(1:4 + 1:2)     #### uneual length ,,, shorter vector is repeated



print( 1 + 1:10)


c(1,2,3) + c(1,2)




###### Some useful functions on vectors


x = c(5,4,3,6,7,8,9,10,1,2)
print(x)


y = sort(x)
y
rev(y)


##### statistical analysis


mean(y)


sum(x)


prod(x)











#### logical values

x = c(TRUE, TRUE, FALSE)
print(x)
y = c(TRUE, FALSE, FALSE)
print(y)
print(x+y) 


print(x & y) 


print(!x)

c(sum(x), prod(x))

##### strings

a = "my string HGUH"
length(a)
nchar(a) 

