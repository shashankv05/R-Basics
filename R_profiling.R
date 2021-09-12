


                                  # system.time()


# Elapsed time: The elapsed time is sometimes called the wall clock time
#                 and this is the amount of time that you experience.


#User time: user time and this is the amount of time that's charged to the CPU or 
#           CPUs for this, for running this expression. 



#  Elapsed time > User time

system.time(readLines('https://www.jhsph.edu'))


# Elapsed time < user time

hilbert <- function(n){
      
        i <- 1:n
        1/outer(i - 1, i, "+")
  
}

x <- hilbert(1000)

system.time(svd(x))

                      # Timing Longer Expressions

system.time({
      n <- 1000
      
      r <- numeric(n)
      
      for (i in 1:n){
          
         x <- rnorm(n)
         r[i] <- mean(x)
      }
  
})


                   Rprof()


# Basically, that's all it does is it prints out the function call stack at, 
# at very quick intervals, 
# so, so that every 0.02 seconds and it prints out the function call stack.

  
                    summaryRprof()
                    
#use the sumaryRprof function to tabulate the Rprof
# or the output and calculate how much is spent in which function. 


# lm(y ~ x)
# sample.interval = 1000
                    
    # One is called by.total, which divides the time spent 
    # in each function by a total, by the total run time.
    
    # So, the, the buy.self format is, I, I think, 
    # the most interesting format to use because it tells you how 
    # much time is being spent in a given function,
    # but after subtracting out all of the other, 
    # all of the time spent in, in lower level functions that it calls.
  
# $by.total                    
# $by.self
# $sample.interval
# $sampling.time
    
    
    
    
    
        



















