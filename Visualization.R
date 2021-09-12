# Sentimental Analysis


cor(airquality$Ozone, airquality$Month, use = "complete.obs")


library(datasets)
head(iris)
summary(iris)
plot(iris)

dev.off()   # clear plots


install.packages("pacman")

require(pacman)
library(pacman)
detach("package:pacman", unload = TRUE)


plot(iris$Species)
plot(iris$Sepal.Length)


plot(iris$Species, iris$Petal.Width)
plot(iris$Petal.Length, iris$Petal.Width)
plot(iris)

plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000",
     pch = 19,
     main = "Iris: Petal Length Vs Petal.width",
     xlab = "Petal.Length",
     ylab = "Petal.Width"
)

plot(cos, 0, 2 * pi)
plot(exp, 1, 5)

plot(dnorm, -3, 3) #density of a normal distribution

plot(dnorm, -3, 3,
     
     col = "#cc0000",
     lwd = 5,        #line width                        
     main ="Standard Normal Distribution",
     xlab = "z-scores",
     ylab = "Density"
)


?mtcars
head(mtcars)

barplot(mtcars$cyl)  # doesn't give the required information

cylinders <- table(mtcars$cyl)
barplot(cylinders)
plot(cylinders)

library(datasets)
?iris
head(iris)
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

# nrow(iris[iris$Sepal.Length > 5 & iris$Sepal.Length <=6 , ])


par(mfrow = c(3, 1))   # here 3 is the no. of rows and 1 is the no. of columns

# iris$Petal.Width[iris$Species =="setosa"]

hist(iris$Petal.Width [iris$Species=="setosa"],
     xlim = c(0, 3),   # x scale
     breaks = 9,       # no of histograms
     main ="Petal Width for Setosa",
     xlab= "",
     col = "red"
     )

hist(iris$Petal.Width [iris$Species=="versicolor"],
     xlim = c(0, 3),   # x scale
     breaks = 9,       # no of histograms
     main ="Petal Width for Versicolor",
     xlab= "",
     col = "brown"
)

hist(iris$Petal.Width [iris$Species=="virginica"],
     xlim = c(0, 3),   # x scale
     breaks = 9,       # no of histograms
     main ="Petal Width for Virginica",
     xlab= "",
     col = "blue"
)

par(mfrow = c(1, 1))   #clean 


hist(mtcars$mpg)
hist(mtcars$cyl)

                        # Scatter Plots

hist(mtcars$wt)
hist(mtcars$mpg)

plot(mtcars$wt, mtcars$mpg)

plot(mtcars$wt, mtcars$mpg,
     pch = 19,
     cex = 1.5,      
     col = "red",
     
     main = "MPG as a function of weight of Cars",
     xlab = "Weight(in 1000 pounds)",
     ylab =  "Mpg"
     )
                # Overlaying plots

?lynx
head(lynx)
hist(lynx)

hist(lynx,
     breaks = 14,
     freq = FALSE,
     col = "thistle1",
     main = paste("Histogram of Anuual Canadian Lynx",
                 "Trappings, 1821-1934"),
     xlab = "Number of Lynx Trapped"
     
     )


# Add a Normal Distribution

curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4",
      lwd = 2,         #LINE WIDTH OF 2 px
      add= TRUE    # super impose on previous graph
      )

# Adding two kernel density estimators
lines(density(lynx), col= "blue", lwd = 2)
lines(density(lynx, adjust = 2), col = "purple", lwd = 2)

dev.off()


library(datasets)
head(iris)

summary(iris$Species)   # Categorical variable
summary(iris$Sepal.Length) # Quantitative variable
summary(iris)

install.packages("psych")
help("psych-package")

library(pacman)
p_help(psych, web = F)
# p_help("dplyr", web = F)

# detach("package:pacman", unload=TRUE)



describe(iris$Sepal.Length)
describe(iris)   # se in the result is for standard error
                # Species * -- asterisk says it's a categorical variable



                #  Select by category   Categorical Variable

summary(iris$Sepal.Length)
summary(iris$Species)


# par(mfrow = c(3,1))


hist(iris$Petal.Length[iris$Species=="versicolor"],
     main = "Petal.Length : Versicolor"
     )

hist(iris$Petal.Length[iris$Species=="virginica"],
     main = "Petal.Length : Virginica "
     )

hist(iris$Petal.Length[iris$Species=="setosa"],
     main = "Petal.Length : Setosa"
     )


# Short petals only (all Setosa)

iris[iris$Species=="setosa", ]

# iris[iris$Species=="setosa" & iris$Petal.Length > 1.7, ] 

# iris[iris$Petal.Length<2, ]   Setosa species returned 

hist(iris$Petal.Length[iris$Petal.Length < 2 & iris$Species=="setosa"],
     main = "Petal.Length < 2"
     )

#nrow(iris[iris$Petal.Length < 1.5 & iris$Species=="setosa", ])


#  Short Virginica petals only

hist(iris$Petal.Length[iris$Species=="virginica" 
        & iris$Petal.Length < 5.5],
      main = "Petal.Length :  Short Virginica")



                      # Principal Components
# https://builtin.com/data-science/step-step-explanation-principal-component-analysis

cars <- mtcars[ , c(1:4, 6:7, 9:11)]
 
head(cars)
 
principalcomponent <- prcomp(cars,     
                             center = TRUE,
                             scale = TRUE
                             )

principalcomponent$x

summary(principalcomponent)
plot(principalcomponent)

library(dplyr)
predict(principalcomponent) %>% round(2)
biplot(principalcomponent)
dev.off()
          

                    # Regression Analysis

library(datasets)
?USJudgeRatings
head(USJudgeRatings)

ncol(USJudgeRatings)
ncol(as.matrix(USJudgeRatings[-12]))

x <- as.matrix(USJudgeRatings[-12])
ncol(x)

y <- USJudgeRatings[, 12]

regression <- lm(y ~ x)
regression



summary(regression)

anova(regression)  
coef(regression)
confint(regression)
resid(regression)
hist(resid(regression))


dev.off()
rm(list = ls()) #clean environment

USJudgeRatings


mtcars






