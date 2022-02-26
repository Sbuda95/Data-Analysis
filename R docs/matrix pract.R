myFirstMat <- 1:20
myFirstMat

A <- matrix(myFirstMat, 4, 5)
A

#this organises the rows in a ordeerly format
B <- matrix(myFirstMat, 4, 5, byrow = T)
B

#rbind function to bind 3 vectors

r1 <- c("I", "am", "happy")
r2 <- c("what", "a", "day")
r3 <- c(1, 2, 3)

C <- rbind(r1, r2, r3)
C
