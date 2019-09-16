
#R is a glorified calculator
3+5

# Subtraction
120-45

#Multiplication
12 * 5

#Division
4 / 9

# Exponents (this doesn't work in python)
2^5

#alternate exponent method
2**5

#Modulo (gives remainder from division)
5%%2
4%%2
#0 as an answer means that there is no remainder (wow)

# order of operations
(100 * 2) + (50/2)

#variables: assigning some expression to some name
#variables name <- expression
#be careful when naming variables so we're not replacing something that's already named in R. EX: calling something list
variable.name <- 50
#make sure to have space between variable name <- and expression

variable.name

#^^^ stores variables with whatever expression you give it

#Variables using arithmatic 
bank.account <- 100

deposit <- 10

bank.account <- bank.account + deposit
#need to rename bank.account if you want the deposit to be saved

bank.account
#now my bank account permanently reflects the deposit

#R recognizes several different data types
#numeric - floating point value (float means decimanl point)
n <- 2.2

#Numeric- integer
i <- 5

#the litte keyboard icon across the dashboard has info on shortcuts!!


# logicals- Booleans (TRUE and FALSE)
t <- TRUE
f <- FALSE

t

f

#character values- strings
char <- "Hello World"

char

c <- 'Single Quotes Work Too, for the most part'

c

class (n)
#tells you the data type of your variable
#needs '' inside the parentheses in case you code directly in R Studio

class (i)

class(char)

class(F)

#putting words in quotations just prints it out, but print function is different
"hello"

'This is also a string'


'String built using double quotes or single quotes'

'I'm using single quotes, but this will create an error'

#instead
"using double quotes is better for contractions I'm "

#want to know the length of the string
#outputs number of characters, INCLUDING ANY SPACES
nchar("Hello World")

#print () function is used to print something to the console...tell someone else something or highlight an error
print('this is printed text using print')

#vs 

#won't see this on the actual R console, but if you use the print function, then you will
"this is printed text using print"

s = 'printed text'

sprintf('This string will include %s', s)
#can also do i for integer, n for numeric, etc.)

s

#%s is just saying that at some point in time, we are substituting this %s for some other variable, in this case above, also named s

sprintf('This string will include %s', c)

sprintf('This string will include %s', n)

#to have multiple different strings
string1 <- "additional text"
string2 <- 'at the end'
string3 <- 'of the sentence'
sprintf('This string will include %s %s %s', string1, string2, string3)
##need the same number of %s's in a row as the number of things you want to include, which are placed at the end


toupper('Hello World')
#changes everything to uppercase

tolower('Hellow World')
#changes everything to lowercase

#this helps split up things by a certain character like a space, tab, ., etc 
strsplit('Hello World', " ")

strsplit('Hello World', "l")

#Vectors c() means to combine #nvec is just assigning a variable name
nvec <- c(1,2,3,4,5)

nvec

class(nvec)

cvec <- c('N','C','S','U')

class(cvec)

lvec <- c(TRUE, FALSE)

lvec

class(lvec)

#can't mix different data types in one variable #Tries to force into one data type, look up class and see what data type was chose
v <- c(FALSE, 2)

v

class(v)

v <- c('A', 1) 
#switches 1 into a character value

v

class(v)

#one way to mix and match data types, frames, and much more!
ilist <- list('A',1, TRUE)

class(ilist)

ilist

#lets you name something
name()

temps1 <- c(73,78,76,83,69,83,89)

temps1

names(temps1) <- c('Mon',"Tues",'Wed','Thurs','Fri',"Sat","Sun")
#define names onto this vector using another vector

temps1

days <- c('Mon',"Tues",'Wed','Thurs','Fri',"Sat","Sun")
temps2 <- c(81,79,91,78,79,67,66)

names(temps2) <- days

temps2

v1 <- c(1,2,3)
v2 <- c(5,6,7)

#vector operations
#takes each element in the same place and applies the function
v1+v2

v1 * v2

#just gives sum of everthing in that vector AND BELOW IS JUST A BUNCH OF STATS FUNCTION
sum(v1)

V <- c(12, 45, 100,2)

sd(V)

var(V)

max(V)

min(V)

prod(v1)

prod(v2)

#greater than or less than (comparing two elements and telling you whether it's true or false)
5>6

#gives you an answer for each number pair in the two vectors v1 < v2

#greater than or equal to >=
6>=6

#BE careful with spacing on negative numbers; don't want to reassign a variable

###need to have two equal signs is wondering whether two numbers equal each other
5==6

##!= is the not equal to function
5 !=6

v1 < 2

#can also index within vectors or grab certain things within them
v1 <- c(100,200,300)
v2 <- c('a','b','c')

ilist

v1

v2

#indexing works differently with counting in R or Python
#pulls out the first element in v1
v1[1]

v2[2]

#take out first two elements in v1
v1[1:3]

v1[c(1,3)]

ilist

#pulls out everything except what you're minusing
v1[-1]

v <- c(1,2,3,4,5,6,7,8,9,10)

v[3:6]

#The NA means that element doesn't exist
v[7:11]

v <- c(1,2,3,4)
names(v) <- c('a','b','c','d')

v['a']

#can also print things in reverse, but I missed this and it's in Jeff's notes 

v>2

#an easy way to filter something. Only returns the cases where the argument is true
v[v>2]

#or can make a variable called filter 

filter <- v>2

v[filter]
