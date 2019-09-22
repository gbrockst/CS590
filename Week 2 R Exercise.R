###Question 1
2^5

###Question 2
peanut.weight<- c(89.4,78.2,91.4,95.2,105.5)
peanut.weight
###Question 3
names(peanut.weight)<- c("Sullivan","Bailey","Bailey II", "Emery", "Wynne")
peanut.weight
###Question 4
mean(peanut.weight)

###Question 5
over.90 <- peanut.weight[peanut.weight>90]
over.90
###Question 6
over.90[over.90 == min(over.90)]

###Question 7
Cultivar<-'Bailey II'
Weight<-'91.4 grams per 100 seeds'
sprintf('The cultivar %s has a seed weight of %s', Cultivar, Weight)

