                                #  Loop Functions


x <- list(a = 1:5, b = rnorm(10))

lapply(x, mean)  # Here, lapply returns another list containing means of a and b 

x <-list(a=1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))

lapply(x, mean)

x <- 1:4
lapply(x, runif)

x <- 1:4
lapply(x, runif, min = 0, max = 10)



                        #Anonymous Function  

x <- list(a = matrix(1:4,2,2), b = matrix(1:6,3,2))

x[[1]][, 1] #Extraction the first column
 
lapply(x, function(elt) elt[ , 1]) 
# x$a[, 2]

                           #  sapply

sapply(x, mean)
class(sapply(x,mean))

x = c(1,5,4)

                        
                              #apply
str(apply)
#  x is an array  
# MARGINS is an integer vector indicting which margins should be retained(rows/columns)
# FUN is a function to be applied


x <- matrix(rnorm(200), 20, 10)

class(apply(x, 2, mean)   )
apply(x, 1, sum)

# col/rows mean

rowsums = apply(x, 1 , sum)
rowMeans = apply(x, 1, mean)
colSums = apply(x, 2, sum)
colMeans = apply(x, 2, mean)

                # Quantiles of the rows of a matrix

x <- matrix(rnorm(200), 20, 10)

apply(x, 1, quantile, probs = c(0.25,0.75))

# Average matrix in an array

a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))

apply(a, c(1, 2), mean)
rowMeans(a, dims=2)

a
colMeans(a) # mean  of columns of each matrix[, 1] ...[ , 10]

                    # [, 1] .....                                [, 10]
          # [1, ] first column elements mean  
          # [2, ] second column elements mean

colMeans(a,dims = 2)  


                      # mapply

# So mapply is, can be used to apply a function to multiple sets of arguments.

str(mapply)

# list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))

mapply(rep, 1:4, 4:1)  



                          # Vectorizing a function
noise <- function(n, mean, sd){
  rnorm(n, mean, sd)
  
}

noise(5, 1, 2)
#I get 5 random normal variables with the mean 1 and standard variation 2.

noise(1:5, 1:5, 2)  # This will not return the desired result we need to use mapply 

mapply(noise, 1:5, 1:5, 2)



                       # tapply

# Tapply is a very useful function and it's used to apply a function over subsets 
# of a vector.
 
x <- c(rnorm(10), runif(10), rnorm(10, 1))

f <- gl(3,10)    # factor
f

tapply(x , f, mean)
tapply(x , f, mean, simplify = FALSE)  # RETURNS A LIST IN THIS CASE


tapply(x , f, range)



                            #split 

x <- c(rnorm(10), runif(10), rnorm(10,1))
x
f <- gl(3, 10)
f
split(x, f)

lapply(split(x ,f), mean)

# tapply(x, f, mean)


                              #Splitting  a Dataframe


library(datasets)

head(airquality)
# 
# cond_ = (!is.na(airquality$Ozone)) & airquality$Month==5
# calMean_Ozone = airquality[cond_,][1]
# mean(calMean_Ozone[[1]])


s <- split(airquality, airquality$Month)

lapply(s, function(x) colMeans(x[, c('Ozone', 'Solar.R','Wind')]))

sapply(s, function(x) colMeans(x[, c('Ozone', 'Solar.R', 'Wind')])) 

sapply(s, function(x) colMeans(x[, c('Ozone', 'Solar.R','Wind')], na.rm = TRUE))




                           # Splitting on more than one level

x <- rnorm(10)
x
f1 <- gl(2,5)
f1
f2 <- gl(5,2)
f2
interaction(f1, f2)

str(split(x, list(f1, f2)))
str(split(x, list(f1, f2), drop = TRUE))


