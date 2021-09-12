

# # Reading Data
# 
# #read.table() vs read.csv()   -- for reading Tabular data and returns
#reads text file                             #data frame

# readLines -- for reading lines of a text file -- returns a  text 
#                                                 as character vector


#source -- for reading in R code files

# dget --  for reading R objects that has been deparsed into text files

#load
#unserialize -- for reading binary objects in R


                            # Writing Data

# write.table
# writeLines()
# dump()
# dput()
# save()
# serialize()

                            #read.table()

# 
# read.table(file,header,sep,colClasses, 
#            nrows,comment.char,skip,stringsAsFactors)


# file -- the naem of file
#  header -- logical flag indicating that whether first line is a header line

#sep -- seperator for example(comma or semicolon or spaces)

#colClasses -- a character vector that indicates the class of each column
#              in the dataset example(numeric, logical, factor etc)


# comment.char  -- character string indicating the comment character
#                             example (pound #, )

# skip -- skip from the beginning

# stringAsFactors --  defaults to True, 



# data <- read.table('foo.txt')  -- returns data frame
# default seperator for read.table() is space

# read.csv() -- the default seperator is comma , always specfies header = true




    # Reading in Larger Datasets with read.table()


# Optimize read.table()

#calculate  how much RAM the dataset is going to require

# Set comment.char ="" if there are no comment lines

# Using colClasses  -- if you can tell R what type of data is in each column


# Otherwise , if you have dataset

# Set nrows may be the first 100/1000 
# initial <- read.table('datatable.txt',nrows=100)

# classes <- sapply(initial,class)  #looping over each of these columns using
                                    #sapply and calling the class function

# tabAll <- read.table("datatable.txt", colClasses=classes)



                      #Textual Formats


# dumping and dputting

# So, and, and the idea behind these types of formats
# is they're text formats, but they're not really, 
# they're not really formatted in a way that's, 
# in the same as like a table because they contain a little bit more meta-data.

# 
# And so the advantage of, of doing, using this type of mechanism to 
# store data or to read, or to read data, is that you don't have, 
# it's still a textual format, which can be useful, but it also 
# contains metadata, 
# so that you don't have to specify it(the type of data) every single time you read it in.


                        # dput-ting R-objects


y <- data.frame(a=1,b="a")
y
dput(y)
dput(y,file = "y.R")
new.y <- dget("y.R")
new.y

                      #dumping R objects

x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x","y"),file = "data.R")
rm(x,y)  #removing x and y objects
source("data.R")
y
                                            
loc = 'C://Users//SHASHANK//Desktop//Shashank_R//DataScienceCoursera//quiz1_data//hw1_data.csv'
test_data <- read.csv(loc)

test_data[1:2, ]       # Returns first 2 rows
test_data[152:153,]
test_data[47,]

test_data$Ozone

test_data$Ozone[!is.na(test_data$Ozone)]    ## Returns values that are not NA

test_data$Temp[test_data$Temp > 90]   ## Temperature greater than 90

test_data$Ozone[is.na(test_data$Ozone)] <- 0 
test_data$Ozone[test_data$Ozone > 31]

condition <-  (test_data$Ozone > 31) & (test_data$Temp>90) 

test_data[condition, ]

test_data[condition, ][1]   ## Only 1st column data

test_data[condition, ][1:5, ] ## Only 1st 5 Records

class(test_data[condition, ][1])

calMeanOzone <-  test_data[condition, ][1]


class(calMeanOzone)
class(calMeanOzone[1])

class(calMeanOzone[[1]])

mean(calMeanOzone[[1]])

test_data[test_data$Month == 6, ]  ## Data for the month==6

test_data[test_data$Month==6, ][4]

max(test_data[test_data$Month==5, ][1])

#  Week 2 

loc = 'C://Users//SHASHANK//Desktop//Shashank_R//DataScienceCoursera//quiz1_data//hw1_data.csv'
test_data <- read.csv(loc)
