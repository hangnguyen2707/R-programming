x <- rnorm(1)
sum <- 0
count <- 0
for (i in 1:100) {
  x <- rnorm(1)
  sum <- x+sum
  if (x>-1 & x<1) {count <- count+1}
} 
Xn <- sum/5
count



#KEY
N <- 1000
counter <- 0
for(i in rnorm(N)){
  if (i<1 & i>-1){
    counter <- counter+1
  }
}
answer <- counter/N
answer