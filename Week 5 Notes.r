
#CSV input and output/ import and export
#excel input & output

#define the working directory
getwd()
#tells you which folder you're in
#use setwd() to set your working directory, even though you're currently in a different folder
setwd('C:\\Users\\gbrockst\\Desktop\\example')
##need to add extra slashes when working in Jupyter, but in RStudio it's okay
getwd()

#read.csv() handles format of file you want to import
example <- read.csv('example.csv')

example

str(example)

colnames(example)

head(example)

help(read.csv)

read.table('example.csv') #delimiters and whether you want to put the first column as names

read.table('example.csv', sep=',') 
#we didn't assign any column names here

#to have column names
read.table('example.csv',sep=',', header=TRUE)

library('data.table') ##built in r-essentials package
fread('example.csv') #it can tell which ones are column headers #'\t' is a tab-deliminated folder #assumes there is a deliminater

# to export data
df <- example

# first define dataframe you want to export and then what you want to name it  #to get rid of index numbers, say rownames=FALSE
write.csv(df, 'csv output.csv')

#for Excel in R
library(readxl)

#^^ allows you to read in excel formats

excel_sheets('Peanut Database.xlsx')

#pull in NCSU Breeding lines
df <- read_excel('Peanut Database.xlsx', sheet='NCSU Breeding Lines')

head(df)

#to pull in multiple sheets or entire workbook #pulled databases in as a list
entire_workbook <- lapply(excel_sheets('Peanut Database.xlsx'), read_excel, path='Peanut Database.xlsx')

entire_workbook

##writing to excel
library(xlsx)

install.packages('xlsx')

library(xlsx)

df <- example

write.xlsx(df, 'output.xlsx')
