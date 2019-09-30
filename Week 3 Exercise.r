
###Question 1
A <- 1:3
B <- 4:6

A
B

rbind(A,B)

###Question 2
mat <- matrix(1:9, nrow=3)
mat

###Question 3
class(mat) == 'matrix'

###Or can say is.matrix(mat)

###Question 4
mat2 <- matrix(1:25, nrow=5, byrow=TRUE)
mat2

###Question 5
mat2[2:3,2:3]

###Question 6
mat2[4:5,4:5]

###Question 7
sum(mat2)

matrix(runif(20, min= 0, max= 100), nrow=4)
