
#apply lapply() and sapply()
###useful for changing stuff in columns
help(lapply)

###sample() pulls out a random number
sample(1:10, 1)

v <- c(1,2,3,4,5)
###create a function to add something to each element in the vector
addrand <- function(x){
    ran <- sample(1:10, 1)
    return(x+ran)
}
    ###x in any function is just a placeholder variable name that you will eventually do something with

###applies on all elements in v, in place with x
lapply(v, addrand)

###anonymous function in R
#function(x){code here}
v

###sets this up the same as how we set up add rand
function(x){x + sample(1:10, 1)}

lapply(v, function(x){x + sample(1:10, 1)} )

add_choice <- function (num, choice){
    return(num+choice)
}
lapply(v, add_choice, choice=10)

help(sapply)
###sapply outputs a vector instead of a list (which lapply does)!!
sapply(v, add_choice, choice=10)

lapp <- lapply(v, add_choice, choice=10)
sapp <- sapply(v, add_choice, choice=10)

class(lapp)
class(sapp)

#sapply leaves index positions missing as it's going through it
even <- function (x){
    return (x[x %% 2==0])
}
sapply(v, even)
# laaply(v, even) does the same thing

setwd('C:\\Users\\gbrockst\\Desktop')
p_yield <- read.table('peanut_yield.txt', sep='\t', header=TRUE)

head(p_yield)

### finish
p_yield['Test_Yield'] < lapply(p_yield['Yield'], function(x){round(x/302.5,1)})

#write an if, else statement to pull out yield
map_condition <- function(x){
    if x > 3000{
        return('YES')
    }else{
        return('No')
    }
}

head(lapply(p_yield[['Yield']] ,map_condition)

###easier to set a new data column from list than data olumn???


###ifelse()

head(ifelse(p_yield['Yield'] >3000, 'select', ifelse(p_yield['Yield'] 

###Regular expression! allows us to find patterns in our data
#grepl()
#gregexr()
#grep()
#sub()
#gsub()


base_pair <- c('A','C','G','T')
#sequence <- paste(sample(base_pair, 100, replace=TRUE), collapse='')
#paste concatenates things together

###without collapse, it gives individual things in strings
sequence <- paste(sample(base_pair, 100, replace=TRUE)

grepl(toupper('gtg'), sequence)
#toupper > gtg to GTG

grepl(toupper('actgg'), sequence)
###grepl just identifies whether something is part of a sequence, not where or what it is


gregexpr(toupper('atg'), sequence)
###pulls out where a pattern is in the sequence

#grep('G', sequence)
###these functions can also be applied to data frames

sequence <- c('ATG','TAG','TTC','CTT','GTG','GAT','GCC')

sub('T', 'U', sequence)
###swaps out things for other things in a vector
#only changes the first instance of that

gsub('T','U', sequence)
###changes every T to a U
