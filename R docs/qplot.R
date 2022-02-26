?qplot

install.packages("ggplot2")

qplot(data = stats, x = Internet.users)

qplot(data = stats, x = stats$Income.Group, y = stats$Birth.rate)

qplot(data = stats, x = stats$Income.Group, y = stats$Birth.rate, size = I(3), colour = I("blue"))

qplot(data = stats, x = stats$Income.Group, y = stats$Birth.rate, geom = "boxplot")


#--------------- Visualizing what we need

qplot(data = stats, x = Internet.users, y = Birth.rate)

qplot(data = stats, x = Internet.users, y = Birth.rate, size = I(4), colour = I("red"))

qplot(data = stats, x = Internet.users, y = Birth.rate, colour = Income.Group, size = I(2))

#-------------------------

qplot(data = merged, x = Internet.users, y = Birth.rate, colour = Region, size = I(2), alpha = I(0.6))
      