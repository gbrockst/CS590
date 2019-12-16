#creating a choropleth map of turfgrass area per state using urbnmapr package
#https://github.com/UrbanInstitute/urbnmapr

#install the package made by Urban Institute to download the shape files needed by first installing devtools
install.packages("devtools")
library(devtools)
devtools::install_github("UrbanInstitute/urbnmapr")

#install tidyverse if not already installed. It will be used to create the map
#install.packages("tidyverse")

#load these packages
library(tidyverse)
library(urbnmapr)

#Plotting a grey template map of the US using a built-in shapefile with state data coordinates using the Albers equal-area conic projection
ggplot() + 
  geom_polygon(data = urbnmapr::states, mapping = aes(x = long, y = lat, group = group),
               fill = "grey", color = "white") +
  coord_map(projection = "albers", lat0 = 39, lat1 = 45)


#setting working directory
setwd("C:\\Users\\grockstad\\Documents\\CS590")

#reading in my data
state_turf <- read.csv("state_turf_area.csv", header=TRUE)

#merging my data with their state data
turf_map <- inner_join(states, state_turf, by= "state_name")


#using the merged file to create the map projection and filling by color based on the mean turf area
turf_map %>%
  ggplot(aes(long, lat, group = group, fill = Mean_Area)) +
  geom_polygon(color = "white") +
  coord_map(projection = "albers", lat0 = 39, lat1 = 45) +
  labs(fill = "Mean Area in \nSquare Km") + 
  theme_void() +
  theme(legend.position = c(0.89, 0.4)) 



 



  