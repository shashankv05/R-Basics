vtr1 = c(TRUE,FALSE)
class(vtr1)

vtr2 = c(15,7.45,99999)
class(vtr2)

vtr3 = c(35L,58L,145L)
class(vtr3)

#vtr4 = c(211.56L)
#class(vtr4)

vtr5 = c(TRUE,45L,3.14)
class(vtr5)

vtr6 = c("Hello",TRUE,45L)
class(vtr6)


                      #Matrix
mtr = matrix(c(5:29),5,5)
# mtr_2 = matrix(c(5:9),5,1)
# mtr_3 = matrix(c(5:9),1,5)


#Array
arr_1 =array(c(0:15),dim = c(4,4,2,2))
arr_2 = array(c(5:9),dim =c(1,5,2,2))

arr_3 = array(c(1:6), dim = c(3,3,2,2))
arr_4 = array(c(1:6), dim =c(2,2,2))
arr_5 = array(c(1:6),dim =c(2,1,2,3))

#list
mylist_ = list(vtr1,vtr2,vtr3)


  #Data_frame

vtr1 = c(1:4)
vtr3 = c("Tesla","World Bank","Google","Ferrari")
vtr4 = c(5,24,19,3)
df = data.frame(vtr1,vtr3,vtr4)

str(df)

df$vtr1
df$vtr3

data.frame(airquality)
data.frame(mtcars)

df = cbind(vtr1, vtr3, vtr)  #coercion occurs ()  

df = data.frame(vtr1, vtr3, vtr4)  #
# df = as.data.frame(c(vtr1,vtr3,vtr4))

print(2^7)

#Modulus Division
print(6%%7)


print(49/7)
#Floor Division
print(22%/%7)
print(6%/%7)

val_1 = c(TRUE,FALSE,TRUE,FALSE)
val_2 = c(FALSE,TRUE,TRUE,FALSE)
print(val_1&val_2)
print(val_1&&val_2)

print(val_1|val_2)
print(val_1||val_2)


print(!val_1)



switch(4,
       "1"= print("Monday"),
       "2"= print("Tuesday"),
       "3" = print("Wednesday"),
       "4" = print("Thursday"),
       "5" = print("Friday"),
       "6" = print("Saturday"),
       "7" = print("Sunday"),
       print("Invalid Case Expression")
)


#Difference between repeat and while

var_1 = 2

repeat{
  if(var_1>2)
    break
  print(var_1)
  var_1 = var_1 + 1
}

var_1 = 2
while(var_1>2){
  print(var_1)
  var_1 = var_1 + 1
}

# for loop

for (variable in 1:25) {
  
  print(variable)
  
}

#Strings

str1 = "Hey!"
str2 = 'How are you?'

str1 <- 'Hey!'
str2 <- 'How are you?'

print(str1)
print(str2)

str3 = "This is Shashank's"
print(str3)
str4 = 'I would love to work with \'Tesla\''
str5 =  'I love "Tesla" Model S'

print(str4)
print(str5)

cat('I love "Tesla" Model S')

str_concat = paste(str4,str5)
print(str_concat)

cat(str_concat)
nchar(str4)
nchar(str5)
nchar(str_concat)

str_upper = toupper(str4)
str_lower = tolower(str4)

print(str_upper)
print(str_lower)



str_substring = substr(str_concat,9,21)
print(str_substring)


# Functions


add_demo <- function(a,b){
  
  print(a + b)
  
}

add_demo(4,5)


fibonnaci_demo = function(num){
  a = 0
  b = 1
  if(num < 0)
    print("Incorrect Input")
  
  else if(num==0)
    return (a)
  
  else if (num==1)
    return(b)
  
  else
    print(a)
  print(b)
  for (i in c(1:num)){
    c = a + b
    print(c)
    a = b
    b = c
  }
  
}

fibonnaci_demo(5)
fibonnaci_demo(9)
num =5
vtr = c(1:num-1)
#vtr = c(1:num)
print(vtr)





