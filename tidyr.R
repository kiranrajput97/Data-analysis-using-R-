#  tidyr package is used to restructure the datasets 

install.packages("tidyr")
library(tidyr)

# Gather converts wider dataset to longer datasets

#######Gather() function -reshaping wide format to wide format########

data_pvc <- read.csv("pvc.csv", row.names=1)
data_pvc
data_pvc2 <- gather(data_pvc, Observer, Observations, c(Alice, Bob, Carl))
data_pvc2

##viceversa of gather
# spread()######

spread(data_pvc2,Observer,Observations)
data_pvc2

#####saperate() function -separating one coloumn 

name<-c("Francis Lara", "Michel John", "Emily Nunn")
age<-c(34,45,23)
city<-c("LA","concord","Aliso Vijejo")
state <- c("CA","CA","CA")
df<- data.frame(name,age,city,state)
df
separate(df,name,c("First Name","Last Name"),sep=" ")


#########unite() function  to unite coloumn #############

x <- unite(df, "Hometown",c(city,state),sep=", ")
x
df








