
 #2)	Add the area of each state, and the center of each state, to the mergeddataframe,
#using the ‘state.center’, ‘state.center’ and ‘state.name’ vectors

CenterX <- state.center$x
CenterY <- state.center$y
mergeDF <- cbind(mergeDF,state.area)
mergeDF <- cbind(mergeDF,CenterX)
mergeDF<- cbind(mergeDF,CenterY)
 #Step B: Generate a color coded map
#3)	Create a color codedmap, based on the area of the state 

#for ggplot visualisation we need the ggplot2 package
#gor geom_map we need the ggmap package

library("ggplot2")
library("ggmap")
usa <- map_data("state")

#for ggplot add aesthetics
Map1<- ggplot(mergeDF, aes(map_id = stateName))

#geom_map for map 
Map1 <- Map1 + geom_map(map = usa ,aes(fill= state.area))

#add limits as coordinates for the map
Map1 <- Map1 + expand_limits(x = usa$long, y = usa$lat) + coord_map()

#add title for the map
Map1 <- Map1 + ggtitle("USA Color Map1")
Map1


#Step C: Create a color shadedmap of the U.S. based on the Murder rate for each state

#4)	Repeat step B, but color code the map based on the murder rate of each state.

Map2= ggplot(mergeDF, aes(map_id = stateName))

#here the map is based on murder rate instead of the state area 
#as in above case
colorMap2=colorMap2+ geom_map(map = us,aes(fill=Murder))+ scale_fill_gradient(low = "green", high = "red")             
colorMap2=colorMap2+expand_limits(x = us$long, y = us$lat) + coord_map()
colorMap2=colorMap2+ggtitle("Murder Rate")
colorMap2

#5)	 Show the population as a circle per state
#(the larger the population, the larger the circle), 
#using the location defined by the center of each state

colorMap3=ggplot(mergedData, aes(map_id = stateName))
colorMap3=colorMap3+geom_map(map = us,aes(fill=Murder))+ scale_fill_gradient(low = "green", high = "red")             
colorMap3=colorMap3+expand_limits(x = us$long, y = us$lat) + coord_map()

#for larger the population, larger is the circle
colorMap3=colorMap3+geom_point(mergedData, mapping = aes(x = stCenterX, y=stCenterY, size=population))
colorMap3=colorMap3+ggtitle("Murder population Map")
colorMap3

#Step D: Zoom the map

#6)	Repeat step C, but only show the states in the north east

#use the coordinates of NewYork city
lats=geocode("new york city, ny",source="dsk")

#set the latitude and longitude
y1=lats$lat-10
x1=lats$lon-10
x2=lats$lon+10
y2=lats$lat+10

#plot the map for the above data
colorMap4=ggplot(mergedData, aes(map_id=stateName))
#based on murder rate
colorMap4=colorMap4 + geom_map(map=us,aes(fill=Murder))+ scale_fill_gradient(low = "green", high = "red") + xlim(c(x1,x2)) + ylim(c(y1,y2))        
colorMap4=colorMap4+ expand_limits(x=us$long, y = us$lat) + coord_map()
colorMap4=colorMap4+ geom_point(data=mergedData, mapping = aes(x = stCenterX, y = stCenterY, size=population))
colorMap4=colorMap4+ggtitle("North East Map")
colorMap4
