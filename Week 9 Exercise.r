
setwd("C:\\Users\\gbrockst\\Documents\\Jeff's Class")

lines <- read.csv("peanut_lines.csv")
lines
lines[1:25,]
#or head(lines, 25)

###count the number of lines that have Bailey as a parent
length(grep("Bailey", lines$Parentage))

Bailey_Parent <- ifelse(grepl("Bailey", lines$Parentage) == "TRUE", "Yes", "No")
Bailey_Parent

#also see Jeff's answer

lines <- cbind(lines, Bailey_Parent)
lines[1:10,]

#bailey_fraction <- round(nrow(lines$FAG == "ol ol" & lines$Bailey_Parent == 'Yes') / nrow(lines), 1)
#bailey_fraction
bailey_fraction <- nrow(subset(lines, lines$FAG == "ol ol" & lines$Bailey_Parent == 'Yes')) / nrow(lines) 
bailey_percent <- bailey_fraction *100
ans1 <- round(bailey_percent, 1)
noquote(sprintf('%s%%', ans1))

#from Jeff^^ #noquote(sprintf('%s%%',bailey_perc))



#replace the name Bailey with the tested name 'N03081T' permanently 
#for all instances in the parentage column
#show the first 10 lines

lines$Parentage <- gsub('Bailey', 'N3081T', lines$Parentage)
lines[1:10,]
#gsub replaces all instances, while sub just replaces the first instance

#load peanut yield and merge on NC_Accession
setwd("C:\\Users\\gbrockst\\Documents\\Jeff's Class")
yields <- read.table("peanut_yield.txt", header=TRUE, sep="\t")
head(yields)
big_data <- merge(lines, yields, by= "NC_Accession", all.y=TRUE)

#create a dataframe that contains the average yield of Bailey and the average 
#of all other lines with Bailey as the parent
Bailey_only <- subset(big_data, big_data$NC_Accession == "Bailey")
Bailey_only
Bailey <- mean(Bailey_only$Yield)



Bailey_parent_only <- subset(big_data, big_data$Bailey_Parent == 'Yes')
Bailey_parent_only
other <- mean(Bailey_parent_only$Yield)


yield <- c(Bailey, other)
line <- c("Bailey", 'Other')
df <- data.frame(row.names= line, yield)
df
