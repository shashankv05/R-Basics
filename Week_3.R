


library(datasets)
data(iris)

?iris

iris$Species

mean(iris[iris$Species=='virginica', 1])


s <- split(iris, iris$Species)
sapply(s, function(x) colMeans(x[ , c('Sepal.Length','Sepal.Width','Petal.Length', 'Petal.Width')]))

apply(iris[, 1:4], 2, mean)

# mean(c(5.006,5.936,6.588))

library(datasets)
data("mtcars")
s <- split(mtcars, mtcars$cyl)
sapply(s, function(x) colMeans(x[ , c('mpg','disp')]))

sapply(split(mtcars$mpg, mtcars$cyl), mean)

x <- data.frame(miles_per_gallon = mtcars$mpg, no_of_cylinders = mtcars$cyl)
y <- x[x$no_of_cylinders==4, ][1:2]
colMeans(y[1])

with(mtcars,tapply(mpg, cyl, mean))

tapply(mtcars$mpg, mtcars$cyl, mean)

tapply(mtcars$cyl, mtcars$mpg, mean)

x <- tapply(mtcars$hp,mtcars$cyl,mean)
x[1]
x[3]
x[3] - x[1]




x = numeric()
x
setmean <- function(mean) m <<- mean

# The ability to manage variables at two levels also makes it possible
# to maintain the state across function invocations by allowing a function to modify 
# variables in the environment of its parent. Key to managing variables at different levels
# is the double arrow assignment operator <<-. Unlike the usual single arrow assignment (<-) 
# that always works on the current level, 
# the double arrow operator can modify variables in parent levels.

makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

cachemean <- function(x, ...) {
  m <- x$getmean() 
  if(!is.null(m)) {   # When cacheMean is called the very first time, m is null and next time you will
    message("getting cached data")              # get this message('getting cached data') in the console. 
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}

 x <- c(1,9,5)

test <- makeVector(c(1,9,5))
test$getmean()
# returns NULL because R discards the object when the function has finished

cachemean(x)  # Error $ operator is invalid for atomic vectors

cachemean(test)     

m <- matrix(c(1:4), nrow = 2, ncol = 2)
m
det(m)

if(det(m)!=0) solve(m)  #%*% m

matrix(c(1:4), nrow = 2, ncol = 2)
