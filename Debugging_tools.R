


                              # Debugging Tools

#  Indications:- message, warning, error, condition

log(-1)  # Warnings


                         # invisible
# If I call invisible on the return object,then it will still return the 
# same object it won't do the auto printing.
# for eg, load function and when it loads the objects,
# it actually returns a character vector 
# containing the names of all the objects that it loads.
# But that doesn't get printed to the screen and because, it returns invisibly.

printMessage <- function(x){
        
  if(x > 0)
      print('x is greater than zero')
  else
      print('x is not greater than zero')

  invisible(x)
  
}

printMessage(1)

# x <- printMessage(1)

printMessage(NA)



printMessage2 <- function(x){
  
  if(is.na(x)) print('x is a missing value')
  
  else if(x > 0)
    print('x is greater than zero')
  else
    print('x is not greater than zero')
  
  invisible(x)
  
}

printMessage2(NA)

x <- log(-1)
printMessage2(x)



                      #  Debugging Tools in R


# traceback : prints out the function call stack after an error occurs; does nothing if
              # there is no error

# debug: flags a function in debug mode which allows you to debug through execution of 
            #a function one line at a time

# browser : suspends the execution of a function wherever it is called and puts the 
              # function in debug mode

#  trace : allows you to insert debugging code into a function a specific places

# recover :  

# And recover is an error handler function which means that any time you encounter an error, 
# anywhere in a function, rather than getting the console back, the R interpreter will stop 
# the execution of that function right where the error occurred, and will kind of freeze it there.


mean(x)
traceback()  #it will give you the most recent error

lm(y ~ x)
traceback()


debug(lm)
lm(y ~ x)   # Browser[Level(2 here)] n (next in console)

options(error = recover)
read.csv('nosuchfile')
 

# 
# debug(ls)
# ls

 



