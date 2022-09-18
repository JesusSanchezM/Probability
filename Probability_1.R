v <- c(3,1,4,1,5,9) #creating a vector
sum(v) #summing my vector
v[c(1,3,5)] #putting positions 
v[-c(1:5)] #setting a range of positions in our vector 
1/(1:100)^2 #making multiple operation with the same base
factorial(5) #writing n!
choose(4,2) #they are combinations 4C2

lfactorial(5) #a useful function for larger values of n, this computes log(n!)
lchoose(4,2) #same concept log(4C2)

sample(10,5) #it will take 5 numbers of a range from 1 to 10
sample(10, 5, replace=T)#adding the ",replace=T", it will take repeat numbers
sample(3) #permutation 1,2,3,...,n abbreviation of sample(3, 3) or sample(n,n)
sample(letters, 5) #sample of letters
sample(3, 4, replace=T, prob = c(0.2,0.2,0.6)) #adding probabilities


replicate(10, sum(10+2)) #replacating a function 10 times
n <- 100
r <- replicate(10^4, sum(sample(n)==(1:n))) #with a permutation of 100 numbers let's see which ones have the same position that each number in its current position
r #from above if a==b is TRUE, then is encoded as 1, and otherwise is 0 or FALSE
sum(r>=1)/10^4 #if I take out 100 balls from a basket and I order them what is the probability that I put at least 1 in its current position, 1,1 and not 45,1

prod(v) #it multiply each element of the vector times each element
k <- 23
1-prod((365-k+1):365)/365^k #the birthday problem 

b <- sample(1:365, 23, replace=T)
tabulate(b)
table(b) #simulating the birthday problem

r <- replicate(10^4, max(tabulate(sample(1:365, 23, replace=T))))
sum(r>=2)/10^4
plot(density(r))



