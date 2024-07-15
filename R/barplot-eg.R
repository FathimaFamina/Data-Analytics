?barplot
x<-1:5
x

barplot(x)
y=c(1,1,2,3,2)
barplot(y)
y=c(1,1,1,2,3,2)
barplot(y)
table(y)
#1-freq=3 ,2 freq=2 ,3-freq=1
barplot(table(y))
z =table(y)
x<-1:5
x
barplot(x)
y=c(1,1,2,3,2)
barplot(y)



barplot(z,xlab="Exam")
barplot(z,xlab="Exam",ylab="marks")
barplot(z,xlab="Exam",ylab="marks",main="Statistics")



barplot(z,xlab="Exam",ylab="marks",main="Statistics",ylim=c(0,4))
barplot(z,xlab="Exam",ylab="marks",main="Statistics",ylim=c(0,4),col=c(1,2,3))
barplot(z,xlab="Exam",ylab="marks",main="Statistics")

#like subplot
#multiple figures by row
par(mfrow=c(1,2))
barplot(z,xlab="Exam",ylab="marks",main="Statistics",ylim=c(0,4),col=c(10,20,30),las=1)
barplot(z,xlab="Exam",ylab="result",main="Statistics",ylim=c(0,4),col=c(5,200,5))


barplot(z,xlab="Exam",ylab="marks",main="Statistics")
par(mfrow=c(2,2))

barplot(y)

par(mfrow=c(1,1))

par(mfrow=c(1,2))
par(mfrow=c(2,2))

par(mfcol=c(2,1))
par(mfrow=c(2,1))

# Example data
z <- c(3, 2, 1)

# Using predefined color names
barplot(z, xlab = "Exam", ylab = "Result", main = "Statistics", ylim = c(0, 4), col = c("red", "green", "blue"))

# Using hexadecimal color codes
barplot(z, xlab = "Exam", ylab = "Result", main = "Statistics", ylim = c(0, 4), col = c("#FF5733", "#33FF57", "#3357FF"))

# Using rgb() function
barplot(z, xlab = "Exam", ylab = "Result", main = "Statistics", ylim = c(0, 4), col = c(rgb(1, 0, 0), rgb(0, 1, 0), rgb(0, 0, 1)))

