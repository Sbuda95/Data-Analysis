x <- rnorm(5)
x

for(i in x){
  print(i)
}


#functions

seq(1,15, 2)
rep("a", 5)
x <- rnorm(5)

?rnorm()

library(ggplot2)

?qplot()
?diamonds

qplot(data = diamonds, carat, price, colour = clarity, facets =.~clarity)
