k <- 3
sample (k, 1) # A single random number between 1 and k.
outputdata= k()

for(i in 1: 10000)
{
  prize <- sample(k, 1) #sample puts the three doors randomly
  
  if(1 == prize){
    open <- sample(k-1, 1) + 1 #because 2 possible doors 
    left <- setdiff(c(2,3), open)
  }
  if(2 == prize){
    open <- 3
    left <- setdiff(c(2,3), open)
  }
  if(3 == prize){
    open <- 2
    left <- setdiff(c(2,3), open)
  }
  print(prize == 1) #not switching
  print(prize == left) #switching
}
    