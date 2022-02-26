
x<- c("a", "b", "c", "d", "e")
x
x[c(1,5)]

Games

#subsetting
Games[,c("2008", "2009")]

Games[1,5]
Games[1,] #this gives us a vector with the row names
Games[1,,drop=F] #this gives us a matrix of the first row

#subsetting matplot

Data <- MinutesPlayed[1:3,]
Data

matplot(t(Data), type = "b", pch = 15:18, col = c(1:4, 6))
legend("bottomleft", inset = 0.01, legend = Players[1:3], col = c(1:4, 6), pch = 15:18, horiz = F)

