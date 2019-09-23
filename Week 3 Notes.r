
#R Matrices

#Range os sequential numeric values
1:10

#Assign sequential numeric range to a vector
v <- 1:10

v

#matrix() function
matrix(v)

#to manipulate the matrix 
matrix(v, nrow=2)

#to change the order of the numbers in the matrix FALSE is the default argument
matrix(v, byrow=TRUE, nrow=2)

#To make a 4 x 3 matrix, meaning four rows and 3 columns
matrix(1:12, byrow=TRUE, nrow=4)

Lewiston<-c(12,14,18,13,17)
Rocky.Mount <-c(11,19,21,15,18)
Whiteville <-c(14,17,23,11,9)

weights<-c(Lewiston, Rocky.Mount, Whiteville)

weights

weights.matrix<-matrix(weights, byrow=TRUE, nrow=3)
weights.matrix

#label rows and columns in a matrix

#name rows = rownames() columns=colnames()
days<- c('Mon','Tues','Wed','Thurs','Fri')

loc.names <-c('Lewiston','Rocky Mount', 'Whiteville')

loc.names

weights.matrix

colnames(weights.matrix)<-days
rownames(weights.matrix)<-loc.names

#now the matrix has labels
weights.matrix

#mathematical functions in a matrix
#A matrix with 5 rows and 10 columns
mat<-matrix(1:50, byrow=TRUE, nrow=5)

mat

2*mat
#multiplies everything by 2

#division
mat/2

mat^2

#The comparison operators are (==, !=, <, >, >=, <=) 
mat >15

mat +mat

mat/mat

mat^mat

mat2<-matrix(1:9, nrow=3)
mat2

#This function just multiplies element by elementmat2 *mat2

###this function considers actual matrix multiplication rules
mat2 %*% mat2

weights.matrix

#Calculate across columns using colSums()
colSums(weights.matrix)

#calculate row sums
rowSums(weights.matrix)

colMeans(weights.matrix)

rowMeans(weights.matrix)

##To add info on to a matrix (Add Clayton to matrix)

Clayton <-c(17,23,15,19,13)

##use either cbind() for a column or rbind() for a row
ncsu.matrix <- rbind(weights.matrix, Clayton)

ncsu.matrix

## add means to the end of the column
Means.loc <- rowMeans(ncsu.matrix)

Means.loc

ncsu2.matrix <- cbind(ncsu.matrix, Means.loc)

ncsu2.matrix

##why did I have extra Means.loc

short <- c(2,18,12)
long <- c(12,11,10,9,8)

cbind(ncsu2.matrix, long)

rbind(ncsu2.matrix, short)

###Jeff's Week 2 notes has an R reference card for all the built-in functions of matrices

### Indexing in a matrix
###example.matrix[row,col]
mat <- matrix(1:50, byrow=TRUE, nrow=5)

mat

###grab row one, but not any particular column
mat[1,]

###just the first column
mat[,3]

##first three rows
mat[1:3,]

mat[1:2,1:3]

##TO pull out specific numbers
mat[2,5:6]

###Factor and categorical matrices

###factor()

### Example: P (Peanut), M(Maize), S(Soybean), and C(Cotton)
crop <- c('p','s','c','m','c','p','m','s','c','p')

id <- c(1,2,3,4,5,6,7,8,9,10)

factor.crop <- factor(crop)
factor.crop

###factor tells you the number of unique levels


##nominal variables have no order, but ordinal variables do
ord.cat <-c('Cold','Med','Hot')

###ordered=TRUE or FALSE
###levels =c('The order')
temps <- c('cold','hot','hot','med','cold','hot','med','cold','med')

fact.temps <-factor(temps,ordered=TRUE, levels=c('cold','med','hot'))

fact.temps

#summary()
summary(temps)

summary(fact.temps)
###breaks down the number of times these things fall within the levels
