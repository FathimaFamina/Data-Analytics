
#### logical values

x = c(TRUE, TRUE, FALSE)
print(x)
y = c(TRUE, FALSE, FALSE)
print(y)

print(x+y) 
print(x & y) 


print(!x)

c(sum(x), prod(x))

a=c(12,45,10)
prod(a)

##### strings

a = "my string"

nchar(a) 




x <-1:9
x
x[1]
x[2]
x[-1]
x[-5]
x[c(1,5,7)]
x[-c(1,5,7)]


#matrix
matrix(data=x,nrow=3,ncol=3)
matrix(data = x,nrow =3,ncol =3,byrow =T)
M = matrix(data = x,nrow =3,ncol =3,byrow =T)

# to see column
M[,1] 
M[,2]

# to see row

M[1,]

M[1,1]
M[3,3]
matrix(x,3,3)
matrix(x,3,)
matrix(x,,3)

z=1:12
z
matrix(z,1)
matrix(z,12)
matrix(z,3)
matrix(z,6)
matrix(z,,3)

matrix(z,,6)


dim(M)
M

t(M)
X
#OPERATIONS
x
x+1
x-1
#MULTIPLICATIONS
M
2*M
M2 = 2*M
M +M2
M -M2
M*M2
M
M2
