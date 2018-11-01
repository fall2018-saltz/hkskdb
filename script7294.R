
library("ggplot2")
library("ggmap")
us <- map_data("state")
options(scipen=999)
map2 <- ggplot(clean_data_merged, aes(map_id = stateName))
map2 <- map2 + geom_map(map = us,aes(fill=Murder))+ scale_fill_gradient(low = "black", high = "red")             
map2 <- map2 + expand_limits(x = us$long, y = us$lat) + coord_map()
map2
