#assignment operator
x <- 1
print(x)
x
msg <-'hello' #character

x <- 'Hi'
x <- 1:20     #integer

x <- c(0.5,0.6) ##numeric
x

x <-c(TRUE,FALSE) ##logical
x

x <- c(T,F) ##logical
x

x<- c('a','b','c','d') #character
x

x<- c(1:5)   #integer
x

x <- c(1+0i,2+4i) #complex
x


x <- vector("numeric",length = 10)  #vector function
x

y <-c(1.7,"a")   #character    { coercion occurs} 
y

y <-c(TRUE,2)  #numeric
y

y <- c('a',TRUE) #character
y


x <- c(0:6)
class(x)

y <- as.numeric(x)
y
class(y)

y <- as.logical(x)
y
class(y)

y <- as.character(x)
y
class(y)

y <- as.complex(x)
y
class(y)

x <- c('a','b','c')
y <- as.numeric(x)
class(y)

y <- as.logical(x)
y
class(y)

y <- as.complex(x)
y
class(y)


x <- list(1,'a',2.0,TRUE,1+4i,1:5)
x
class(x)

                      ##Matrix

# Matrices are vectors wit dimension attribute.
#The dimension vector is itself an integer vector of length 2 (nrow, ncol)


m <- matrix(nrow =2, ncol=3)
m

dim(m)  # no of rows, no of columns
attributes(m) 
#returns a list $dim(first element) 
#and it has vector example;([1] 2 3)  

m<- matrix(1:6, nrow =2, ncol=3)
m<- 1:10
dim(m) <- c(2,5)    # 2 rows and 5 cols
m

x <- 1:3
y <- 10:12

cbind(x,y)
rbind(x,y)


## Factors

#Used to represent categorical data

## Self-Describing


x <- factor(c('yes','no','no','yes','yes'))
class(x)

table(x)   
unclass(x)  # brings x down to integer vector

#Setting the order of the levels

x <- factor(c('yes','no','no','yes','yes'),levels=(c('yes','no')))
x


# Missing values

x <- c(1,2,NA,10,5,4) # numeric vector
is.na(x)  #Numeric  missing value
is.nan(x)

x <- c(1,2,NaN,NA,4,5)
is.na(x)
is.nan(x) #returns True for NaN value

                            ##Data Frames

# Used to store Tabular data

#Unlike matrices where, which have to store the
#same type of object in every single element of the matrix, 
#data frame can store objects of different classes.

#row.names
#read.table() or read.csv()

# data.matrix()

x <- data.frame(foo = 1:4, bar = c(T,F,F,T)) 
x
nrow(x)

ncol(x)
row.names(x)
x <- data.matrix(x)


                            ##Names

#Helps to write readable code

x <- 1:3
names(x)
names(x) <- c('foo','bar','norf')
x


x <- list(a=1,b=2,c=3)
x

m <- matrix(c(1:4), nrow=2, ncol=2)
m
dimnames(m) <- list(c('a','b'),c('c','d'))
m

rm(list = ls())  #clean environment
                  
                  

x <- c(1,3,5)
y <- c(3,2,10)

cbind(x,y)
rbind(x,y)
class(rbind(x,y))


x <- list(2,"a","b",TRUE)
x[[2]]

class(x[1])
class(x[[1]])

x <- 1:4
y <- 2
x <- x + y
x
class(x)



x <- c(17,14,4,5,13,12,10)
x[x>10] <- 4
x

x[x>=11]<-4
x



x <- 4L
class(x)


x <- c(4,"a",TRUE)
class(x)

x <- list(2,"a","b",TRUE)
class(x[[1]])
