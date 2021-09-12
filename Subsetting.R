                        #  Subsetting in R


x <- c("a","b","c","d","e")
x[1]         #numeric index
x[2]
x[1:4]
x[x > "a"]   # logical index
x[x>"c"]

u <- x > "a" # u is logical vector
u

x[u]


                        # Sub setting Lists

            
x <- list(foo = 1:4, bar = 0.6)
x
x[1]         ##Single bracket always returns a list
x[[1]]
class(x[1])
class(x[[1]])

x$bar
x[["bar"]]
x["bar"]  ##Single bracket always returns a list


#Extracting Multiple elements

x <- list(foo = 1:4, bar = 0.6, baz="hello")
x[c(1,2)]
x[c(1:3)]


name <- "foo"
x[name]
x[[name]]

x$name      ##element name does not exist
x$foo      ##element foo does exist


                        ##Nested elements

x <- list(a = list(10,12,14), b= c(3.14,2.95))

x[1]
x[2]

x$a
x$b

# x[[1]]
# x[[2]]
# 
# x[[1]][1]
# x[[1]][[1]]

x[[c(1,3)]]
# x[c(1)]
# x[c(2)]
x[[c(2,1)]]


                            #Sub setting Matrix


x <- matrix(1:6, 2,3)
x
x[1,2]
x[1,2, drop=FALSE]  ## drops preserves dimensions and returns 1 X 1 Matrix here
x[2,1]

x[1,]
x[1, ,drop=FALSE]   ## 

x[,2]


                        # Sub setting partial matching


x <- list(aardvark = 1:5)


x$a
x["a"]
x[["a"]]

x[["a",exact=FALSE]]



                  # Sub setting Removing NA values


x <-  c(1,2,NA,4,5,NA,7)
bad <- is.na(x)
x[!bad]


x <- c(1,2,NA,4,5,NA,7,NA)
y <- c("a","b",NA,"d","e",NA,"g",NA)

good <- complete.cases(x,y)  #good is a logical vector
good

x[good]
y[good]


# Data Frames

airquality

airquality[1:6,] 

airquality[1:6,1:4]
airquality[1:6,4]  #value of 4th column for first 6 rows

good <- complete.cases(airquality)# returns True for each of the row values not having NA values
good
airquality[good,][1:6,]

airquality[1]

class(airquality)
class(airquality[1])


# x <- c(airquality[[1]])

x <- airquality$Ozone
x

bad <- is.na(x)
bad

clean_data_ozone <- x[!bad]
sum(clean_data_ozone)/116

ozone_values_greater_than_31 <- clean_data_ozone[clean_data_ozone > 31]
ozone_values_greater_than_31



airquality$Temp
class(airquality$Temp)


                              ##EXECUTE STEP BY STEP    

temp_values_above_90degree <- airquality$Temp[airquality$Temp > 90]
temp_values_above_90degree

ozone_values_greater_than_31 <-airquality$Ozone[airquality$Ozone > 31]
ozone_values_greater_than_31

airquality$Ozone[is.na(airquality$Ozone)]  <- 0
airquality$Solar.R[is.na(airquality$Solar.R)] <- 0

airquality$Temp[is.na(airquality$Temp)] <- 0



cond_ <- (airquality$Ozone > 31) & (airquality$Temp>90)

x <- c(airquality[cond_, ][2])

class(x[[1]])

mean(x[[1]])



cond_ =  (airquality$Month == 6)

x <- airquality[cond_, ][4]
x

mean(x[[1]])

cond_ <- (airquality$Month==5)
max(airquality[cond_, ][1])



