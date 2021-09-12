
add2 <- function(x,y){
  x + y
}


x <- c(1,2,3,4)

is.vector(x)


# x[x > 2]
# y <- x > 2
# x[y]


above <- function(vtr , n = 10){   #setting default n =10 
  
      use <- vtr > n   ## use is Logical Vector
      vtr[use]         ## Returns subset of vtr for which use holds TRUE
}

above(1:20)
above(1:20 , 12)



# nc = ncol(airquality)
# class(nc)
# means <- numeric(nc)
# means[3] <- mean(airquality[,3])
# means
# 

columnMean <- function(df , removeNA = TRUE){
  
      nc <- ncol(df)
  
      means  <- numeric(nc)  #Uncomment above commented lines to understand
  
      for (i in 1:nc){
        
        means[i] <- mean(df[ , i], na.rm = removeNA)   # df[rows , columns]
                                                  #                
      }
      means
      
}


# mean(airquality$Ozone, na.rm = TRUE)

                  ##Arguments Matching

mydata <- rnorm(100)
sd(mydata)
args(sd)

sd(x = mydata)

sd(x = mydata, na.rm = FALSE)

sd(na.rm = FALSE , x=mydata)

sd(na.rm = FALSE, mydata)
  
args(lm)


# lm(data = mydata, y-x, modal = FALSE, 1:100)
# lm(y - x, mydata, 1:100, model = FALSE )  ## Always Use this format/order of arguments


function(a, b = 1, c = 2 , d = NULL){  
  
}

                                      # Lazy Evaluation

                      # The arguments of a function are only evaluated when they are needed

f <- function(a,b){
  
    a * 2
}

f(2)

f <- function(a,b){
  
    print(a)
    print(b)
}

# f(45)   This will give an error as argument b is missing when it tries to print b



                                          #  ... Argument

myplot <- function(x , y, type = 'l', ... ){   ## ... preserves the original arguments
  
  plot(x, y, type = type, ...)    # we don't have to retype the rest of the argument of the plot function 
                                #   we can do so by ...
  
}


plot.default(4 , 5)
myplot(5, 5)

             ## Below functions have the first argument as ...
args(paste)
args(cat)

paste("a","b", sep = ":")
paste("a", "b", se = ":")  # That any arguments that appear 
                            # after the three dots have to be named explicitly 
                              # and in full. So, that why it adds a colon at the end 




cube <- function(x , n){
  
    x^3
}

cube(3)


x <- 1:10

if (x > 5){
  x <- 0
}
















