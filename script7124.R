
#2)	Add the area of each state, and the center of each state, 
#to the merged dataframe, using the ‘state.center’, 
#‘state.center’ and ‘state.name’ vectors

CenterX <- state.center$x

CenterY <- state.center$y

mergeDF <- cbind(mergeDF,state.area)

mergeDF <- cbind(mergeDF,CenterX)

mergeDF<- cbind(mergeDF,CenterY)
 
 
 #Step B: Generate a color coded map

#3)	Create a color codedmap, based on the area of the state 

# installing "ggplot " and "ggmap" libraries for ggplot and geom_map


library("ggplot2")

library("ggmap")

usa <- map_data("state")


#defining  aesthetics for ggplot
Map1<- ggplot(mergeDF, aes(map_id = stateName))

#geom_map  
Map1 <- Map1 + geom_map(map = usa ,aes(fill= state.area))

#adding map limits
Map1 <- Map1 + expand_limits(x = usa$long, y = usa$lat) + coord_map()

# adding map title
Map1 <- Map1 + ggtitle("USA  Map1")

Map1


#Step C: Create a color shadedmap of the U.S. based on the Murder rate for each state

#4)	Repeat step B, but color code the map based on the murder rate of each state.

Map2 <-  ggplot(mergeDF, aes(map_id = stateName))

# map is based on murder rate 


Map2 <- Map2+ geom_map(map = usa,aes(fill=Murder))+ scale_fill_gradient(low = "yellow", high = "blue")             

Map2 <- Map2+expand_limits(x = usa$long, y = usa$lat) + coord_map()

Map2<- Map2+ggtitle("MAP OF MURDER RATE")

Map2

#5)	 showing population as circle . Larger the population Larger the size of circle


Map3 <- ggplot(mergeDF, aes(map_id = stateName))

Map3 <- Map3+geom_map(map = usa,aes(fill=Murder))+ scale_fill_gradient(low = "yellow", high = "blue")             

Map3 <- Map3+expand_limits(x = usa$long, y = usa$lat) + coord_map()




Map3 <- Map3+geom_point(mergeDF, mapping = aes(x = CenterX, y=CenterY, size=population))

Map3 <- Map3+ggtitle("Map Of Murder population ")

Map3



#6)	Repeat step C, but only show the states in the north east

#use the coordinates of NewYork city
latitude <- geocode("new york city, ny",source="dsk")

#set the latitude and longitude

y1 <- latitude$lat-10

x1 <- latitude$lon-10

x2 <- latitude$lon+10

y2 <- latitude$lat+10




Map4 <- ggplot(mergeDF, aes(map_id=stateName))

#based on murder rate

Map4 <- Map4 + geom_map(map=usa,aes(fill=Murder))+ scale_fill_gradient(low = "yellow", high = "blue") + xlim(c(x1,x2)) + ylim(c(y1,y2))        

Map4 <- Map4+ expand_limits(x=usa$long, y = usa$lat) + coord_map()

Map4 <- Map4+ geom_point(mergeDF, mapping = aes(x = CenterX, y = CenterY, size=population))

Map4 <- Map4+ggtitle("Map of North East Map")

Map4
