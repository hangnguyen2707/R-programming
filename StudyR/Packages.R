install.packages("ggplot2")

# lenh dung de activate thu vien
library(ggplot2)

?qplot
?diamonds
ggplot(data= diamonds, carat, price, 
      colour=clarity, facets=.~clarity)
