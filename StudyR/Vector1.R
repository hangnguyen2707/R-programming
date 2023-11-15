MyFirstVector <- c(3,45,56,732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

V2 <- c(3L,45L,243L,0L)
is.integer(V2)

V3 <- c("a","B23","Hello")
V3
is.character(V3)
is.numeric(V3)

V4 <- c("a","B23","Hello",7)

#sequence - like ':'
seq()
# replicate
rep()

seq(1,15,2)

rep(3,50)
1:15

d <- rep(3,15)
d

#replicate vector
x <- c(80,20)
y <-rep(x,10)
y
