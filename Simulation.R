

                                  
                                  # Simulation

# there are a couple of functions that are available for 
# simulating numbers or variables from given probability 
# distributions, probably the most important of which is the normal distribution.

# Functions for probability distribution in R


rnorm() #random number generation

# So the rnorm function will simulate normal random variables
# that from a distribution has a given mean and standard deviation.



# there are corresponding functions for the R, for the normal distribution 
# that can be used to evaluate the probability density, to evaluate the 
# cumulative distribution function and for also for evaluating the quantile function.

dnorm()  #density

# evaluate the normal probability density (with a given mean/SD)
#  at a point( vector of points)

pnorm() #cumulative distribution

# evalaute the cumulative distribution function for a Normal Distribution

rpois()

# another function for generating random variables is the rpois function or the, 
# which generates Poisson random variables from a Poisson distribution
# with a given rate.

qnorm()    # quantile function




# So for the gamma distribution, 
# there'll be a dgamma, an rgamma, pgamma, and a qgamma function.


# And for the Poisson distribution there's the rpois, dpois ppois, and qpois functions.            # 


                            # Generating Random Numbers

# Working with Normal distribution requires using these four functions : 



dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1,lower.tail = TRUE, log.p = FALSE)
rnorm(N, mean = 0, sd = 1)


# So just to be more explicit, if phi is the cumulative distribution function for 
# the standard normal distribution, then pnorm is equal then to phi
# and qnorm is equal then to the inverse of phi.


x <- rnorm(10)   
x <- rnorm(10, 20, 2)


set.seed(1)
rnorm(5)

rnorm(5)

set.seed(1)
rnorm(5)



rpois(10, 1) # here rate is 1
rpois(10, 2) # here rate is 2

# And so, so for the Poisson distribution, 
# the mean is going to be equal to the rate 

rpois(10, 20) 

set.seed(1)
rpois(5, 2)

# I could also evaluate the cumulative distribution function for the Poisson
# distribution.
# example I want to know what is the probability 
# that a Poisson random variable is less than or equal to two if the rate is two.

ppois(2,2)

ppois(4,2)

ppois(6,2)


                  #  Generating Random Numbers from A Linear Model

set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)  # epsilon 

y <- 0.5 + 2 * x + e

summary(y)

plot(x, y)

#  What  if x is binary?

set.seed(10)
x <- rbinom(100, 1, 0.5)

e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e

summary(y)

plot(x, y)

# Now suppose you want to simulate from a slightly more complicated model 
# a generalized linear model perhaps with a Poisson distribution.
# Discrete probability distribution

set.seed(1)
x <- rnorm(100)

log.mu <- 0.5 + 0.3 * x 

y <- rpois(100, exp(log.mu))
summary(y)

plot(x, y)


                          # Random Sampling

# The sample function can be used to draw random 
# samples from arbitrary vectors, if you want to kind of create your own distribution here.

set.seed(1)
sample(1:10, 4)

sample(1:10, 4)

sample(letters, 5)

sample(1:10)    # permutation

sample(1:10, replace = TRUE)  #Sample with replacement



                    # Week 4

set.seed(10)
x <- rep(0:1, each = 5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e

plot(x, y)









