                                          
                                      # str

# particularly well suited for compactly displaying large lists which may contain nested lists.

# you can apply str to itself and see it's a function that takes an object.
# It can take any R object.

str(str)

str(lm)  # brief summary of like what are the arguents to this lm funtion

str(ls)

x <- rnorm(100, 4, 2)

summary(x)  

str(x)  # tells x is a numeric vector , gives first 5 numbers in this vector
# So you can get a sense of kind of what the data looked like.

f <- gl(40,10)



str(f)  

summary(f)


library(datasets)
head(airquality)

str(airquality)   

# So, the str output here is very useful for kind of just getting a 
# quick examination of data that you might 
# have in R and what the structure of different R objects is.


m <- matrix(rnorm(100), 10, 10)
m

str(m)

s <- split(airquality, airquality$Month)
s

str(s)



