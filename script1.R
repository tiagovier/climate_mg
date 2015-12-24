#capture station details
id_station_83669 <- read.csv("brutos/est_83669.txt", header = FALSE, na.strings = ".", sep = ":", skip = 35)[1:3 , 1:2]

#capture data from stations, variables 1 to 11, skipping 46 first lines, desconsidering last using character "<"
stats_station_83669 <- read.csv("brutos/est_83669.txt", header = TRUE, na.strings = ".", sep = ";", skip = 46, comment.char = "<")[ ,1:11]

id_station <- data.frame(t(id_station_83669), row.names = NULL)
colnames(id_station) <- c("Latitude", "Longitude", "Altitude")

#extract station data
latitude <- id_station[2,1]
longitude <- id_station[2,2]
altitude <- id_station[2,3]

stats_station_83669$latitude <- latitude   # Use the same value (0) for all rows
stats_station_83669$longitude <- longitude   # Use the same value (0) for all rows
stats_station_83669$altitude <- altitude   # Use the same value (0) for all rows

#stats_station_83669[,c(1,14,13,12,2,3,4,5,6,7,8,9,10,11)] # to order

