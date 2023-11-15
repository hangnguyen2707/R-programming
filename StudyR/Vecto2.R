

x <- c(1,123,543,13,4)  #combine

y <-seq(201,250,11)      #sequence
z <- rep("Hi",3)         #replicate


w <- c("a","b","c","d","e")
w

w[2]
w[3]
#Hien thi tat ca, tru phan tu co gia tri trong ngoac
w[-1]
w[-3]

w[1:3]
w[3:5]

w[c(1,3,5)]
w[c(-2,-4)]


w[-3:-5]
w[1:2]

w[0]

w[4:7]

w[-7]


x <- rnorm(5)
x

#R-specific programming loop
for(i in x){
  print(i)
}

#conventional programming loop
for(j in 1:5){
  print(x[j])
}