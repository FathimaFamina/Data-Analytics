
x=c(1,1,1,1,2,2,3,3,5)
pie(x)
length(x)

y=table(x)
y
pie(y)
pie(y,labels = LETTERS[10:13])
pie(y,labels = c("sales","profit","loss","count"))
pie(y,edges =20)
pie(y,edges =10)

pie(y,radius = 1)
par(mfrow=c(1,2))

#to convert clockwise
pie(y,clockwise = T)
pie(y,col = c("red","blue","green","yellow"))
pie(y,col = rainbow(10))

pie(y,col = rainbow(10),border = F)
pie(y,col = rainbow(10),border = F,labels="")

pie(y,col = rainbow(10),border = F,labels= c("sales","profit","loss","count"),main = "PLOT_1") 
    

pie.sales <- c(0.12, 0.3, 0.26, 0.16, 0.04, 0.12)
names(pie.sales) <- c("Blueberry", "Cherry",
                      "Apple", "Boston Cream", "Other", "Vanilla Cream")
pie(pie.sales) # default colours
pie(pie.sales, col = c("purple", "violetred1", "green3",
                       "cornsilk", "cyan", "white"))

pie(c(Sky = 78, "Sunny side of pyramid" = 17, "Shady side of pyramid" = 5),
    init.angle = 315, col = c("deepskyblue", "yellow", "yellow3"), border = FALSE)
