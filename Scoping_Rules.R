                             ##Scoping Rules
search()

                        # Binding values to a `Symbol`

# global env is always the first element in the search-list
# and base is always the last  

#  The order on the search list matters

# When a user loads a package with library , the namespace of that package
#  gets put in position 2 of the search list (by default) and everything gets shifted 
#  down the list

#  R has separate namespace for functions and non-functions, so it's possible 
#  to have an object named c and a function named c.



                        # Scoping Rules

#  The scoping rules of a language determine how values are assigned to free variables.
  
  #  Lexical Scoping

function(x, y){
  
  x^2 + y / z # here z is a free variable( Free variables are not formal arguments 
              #  and are not local variables (assigned inside the function body))  
  
}


#  The values of free variables are searched for in the environment in which the
#  the function was  defined.

#  Environment - a collection of (symbol, values)pairs

#  A function + it's associated environment = function closure 



# function return another function as it's value

make.power <- function(n){
  
        pow <- function(x){
          
          x^n
        }
        
        pow
}

cube <- make.power(3)

square <- make.power(2)



                              #  Exploring a function closure

ls(environment(cube))
ls(environment(make.power))


get("n", environment(cube))
get("n",environment(square))


                    # Lexical vs Dynamic Scoping



f <- function(x){
  
      y <- 2
      y^2 + g(x)    
}


g <- function(x){
  
   x * y        #y will be assigned 2 in dynamic scoping 
                # y is 2 in the calling environment while in lexical scoping it is 10
}
y <- 10

f(3)



## 34 


# When a function is defined in the global environment and is subsequently called
# from the global environment, then in this case the defining environment and 
# calling environment are same  -- sometimes gives a appearance of Dynamic scoping 

g <- function(x){
  a <- 3  
  x + a + y  
}

g(4)   ## Gives Error:  y is not defined 

y <- 3
g(4)

ls(environment(g))
                        #  Week 2 Test
f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}
z <- 10
f(3)



x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}

















