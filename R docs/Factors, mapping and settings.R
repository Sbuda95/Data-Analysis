movies <- read.csv(file.choose())
head(movies)

colnames(movies) <- c("films", "Genre", "CriticsRatings", "AudienceRatings", "BudgetMillions", "Year")

str(movies)

#setting data to factor eg years theres only one year per movie 
movies$films <- factor(movies$films)
movies$Genre <- factor(movies$Genre)
movies$Year <- factor(movies$Year)

summary(movies)

#---------- Aestetics

library(ggplot2)

ggplot(data = movies, aes(x=CriticsRatings, y=AudienceRatings, colour = Genre, size=BudgetMillions)) + geom_point()

#-----plotting with layers

p <- ggplot(data = movies, aes(x=CriticsRatings, y=AudienceRatings, colour = Genre, size=BudgetMillions)) + geom_point()

p

#----------Overriding Aestetics


q <- ggplot(data = movies, aes(x=CriticsRatings, y=AudienceRatings, colour = Genre, size=BudgetMillions)) + geom_point()

q + geom_point(aes(size=CriticsRatings))

#----------- Mapping

r <- ggplot(data = movies, aes(x=CriticsRatings, y=AudienceRatings, colour = Genre, size=BudgetMillions)) + geom_point()

r + geom_point(aes(size=BudgetMillions))

#---- Setting
r + geom_point(size=5)


#--------- Histogram Charts

s <- ggplot(data = movies, aes(x = BudgetMillions))
s + geom_histogram(binwidth = 5)

s + geom_histogram(binwidth = 5,aes(fill=Genre), colour="Black") 

#---------- Density Chart
s + geom_density()
s + geom_density(aes(fill=Genre), position = "stack")

#-------- Starting layer tips

t <- ggplot(data = movies, aes(x=AudienceRatings))
t + geom_histogram(binwidth = 10, fill="White", colour="Black")

#---- Statistical Transformation

u <- ggplot(data = movies, aes(x=CriticsRatings, y=AudienceRatings, colour = Genre)) + geom_point() + geom_smooth(fill = NA)
u

#-------------Boxplot

u <- ggplot(data = movies, aes(x=Genre, y=AudienceRatings, colour = Genre))
u + geom_boxplot()

#------------ Using Facets
# Facets allows us to create many charts for data

v <- ggplot(data = movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill=Genre, colour="Black")) + facet_grid(Genre~., scales = "free")


#------------Scatterplot 

w <- ggplot(data = movies, aes(x=CriticsRatings, y=AudienceRatings, colour = Genre))
w + geom_point(size = 3)

w + geom_point(size = 3) + facet_grid(Genre~.)

w + geom_point(size = 3) + facet_grid(.~Genre)

w + geom_point(size = 3) + facet_grid(Genre~Year)

#---------Coordinates

m <- ggplot(data = movies, aes(x=CriticsRatings, y=AudienceRatings, size = BudgetMillions,colour = Genre))
m + geom_point()

m + geom_point() + xlim(50,100) #sets limit to x
m + geom_point() + ylim(50,100) #sets limit to y

#--improve by zooming in 

w + geom_point(size = 3) + facet_grid(Genre~Year) + coord_cartesian(ylim =c(0,100))

