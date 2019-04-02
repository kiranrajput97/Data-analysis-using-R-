name <- c("anne","mile","robert","joe","mili")
age<- c(25,26,27,28,29)
child<- c(FALSE,TRUE,FALSE,TRUE,TRUE)

df<- data.frame(name,age,child)
df
str(df)

name <- c("anne","mile","robert","joe","mili")
age<- c(25,26,27,28,29)
child<- c(FALSE,TRUE,FALSE,TRUE,TRUE)

df<- data.frame(name,age,child ,stringsAsFactor=TRUE)
df
str(df)
