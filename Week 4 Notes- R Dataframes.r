
##matrix inputs are limited because they have to all be the same kind of data
###r has dataframes built-in that you can reference
state.x77

###data() populates all the built-in data sets
data()

data(Loblolly)

states<- state.x77
head(states)

###gives you the last whatever after the comma 
tail(states,10)

str(states)
###tells you data strucutre by class of data

###summary only summarizes the numeric values
summary(states)

###to build a dataframe data.frame()
days <- c('Mon','Tues','Wed','Thurs','Fri')
temp <-c(76,89,67,91,84)
rain <-c(T,F,T,F,T)

df <- data.frame(days,temp,rain)

###call dataframe and see what you've created
df

str(df)

###find number of rows (becomes important for for loops and iterating through all the rows)
nrow(df)

###number of columns
ncol(df)

###names of columns and rows
rownames(df)
colnames(df)

###indexing and selection follow the df[row,colum] notation
###to pull all info from first row
df[1,]
###or first column
df[,1]

##to pull out rain
df[,3] 
###or
df[,'rain']

###pull out first five rows for days and temp
df[1:5,c('days','temp')]

###another way to index specific columns dataframe$colname (This just returns the vector) indexing with df[,] 
###keeps the dataframe structure
###to pull out rain
df$rain
df$days

###individually reference cells by using two brackets. 
vec <- df[[5,2]]
vec

###make a new dataframe from an exisiting vector
newdf <- df[1:3,1:2]
newdf

###to change the values of a specific location within dataframe
###use two brackets to refer to a specific cell
df[[2,'rain']] <- TRUE

df

###create new columns using the dollar sign notation either using new vectors or combining things
df

df$celcius <- c(df$temp -32 *5/9)

df

df['over.80'] <- df['temp'] >80

df

###subsetting in a dataframe subset() grabs some values based on a condition
#grab all the days where it rained using subset and pulls them out
subset(df, subset= rain==TRUE)
###or subset(df, rain==TRUE)

subset(df, temp>80)

###to do multiconditional statements: use the logical & (and) and | (or)
subset(df, days!='Wed' & temp<80)

df[(df$days!='Wed' & df$temp<80),]
###I want to index the dataframe (use of brackets), and I only want to index where(use of parenthesis) 
###the rows where df days isn't wednesday and df temp <80

df[(df$days!='Wed' | df$temp<80),]

###can index a dataframe with subset() or with df[(df)] or whatever your dataframe is

###to order dataframes order()
sorted.temp <- order(df$temp)
###gives you the rownames or numbers

sorted.temp

###now we can use the vector to sort based on our rows in sorted.temp
df[sorted.temp,]

###to do descending or ascending or descending
desc.temp <-order(-df['temp'])

df[desc.temp,] 
###saying that desc.temp is going to be our new index
