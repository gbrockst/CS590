
###Question 1
OL_Ratio <- c(76.2,82.1,78.9,74.3,77.7)
Leaf_Spot <- c(5.5,7.2,6.5,4.2,3.1)
Drought <- c(T,F,T,F,F)


df <- data.frame(OL_Ratio, Leaf_Spot, Drought)
rownames(df) <-c('N12006','N13003','N13042','N14002','N16021')

df

###Question 2 
subset(df, Drought==TRUE)

###Question 3
setwd('C:\\Users\\gbrockst\\Desktop')
peanut_lines <- read.table('peanut_lines.csv', sep=',', header=TRUE)
peanut_disease <- read.table('peanut_disease.txt', sep='\t', header=TRUE)

###Question 4
colnames(peanut_lines)
colnames(peanut_disease)

###Question 5 #when I do this I strangely get 39 more rows than peanut_disease itself?
disease_data <- merge(peanut_lines, peanut_disease, by.x= 'NC_Accession', by.y= 'NC_Accession', all.y=T)

disease_data
dim(disease_data)

###Question 6
leaf.spot <- subset(disease_data, Rating =='LS')

###Question 7
any(is.na(leaf.spot$Disease))
dim(leaf.spot)


leaf.spot <- leaf.spot[!is.na(leaf.spot$Disease),]

dim(leaf.spot)

###Question 8
mean(leaf.spot$Disease & leaf.spot$Year == 2017)

###Question 9
line_names <- c('Bailey', 'Bailey II', 'Wynne', 'Sullivan', 'Emery', 'N96076')
subset.leaf.spot <- subset(leaf.spot, NC_Accession %in% line_names)





###Question 10 can get Emery as an answer by looking at mean values
list1 <- list(subset.leaf.spot$NC_Accession)
new_df <- aggregate.data.frame(subset.leaf.spot$Disease, by = list1, FUN=mean)


###Question 11
library(xlsx)
write.xlsx(new_df,'Leaf Spot.xlsx')
