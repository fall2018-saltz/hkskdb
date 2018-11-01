
#Step B: Generate a color coded map
#3)	Create a color coded map, based on the area of the state 

library("ggplot2")
library("ggmap")
usmap <- map_data("state")
options(scipen=999)
map2 <- ggplot(mergeddata, aes(map_id = stateName))
map2 <- map2 + geom_map(map = usmap,aes(fill=Murder))+ scale_fill_gradient(low = "green", high = "red")             
map2 <- map2 + expand_limits(x = usmap$long, y = usmap$lat) + coord_map()
map2
