###################################################################
############ APPLY FAMILY OF FUNCTIONS ################
####################################################################
data_pvc <- read.csv("C://Users//HP INDIA//Desktop//pvc.csv", row.names=1)
data_pvc
mat_pvc <- as.matrix(data_pvc)
mat_pvc
class(mat_pvc)
str(mat_pvc)
###### TO CALCULATE MAX OF EVERY ROW ########
max(mat_pvc[1,])
max(mat_pvc[2,])
max(mat_pvc[3,])
max(mat_pvc[4,])
###### OR CAN USE FOR LOOP FOR CASE ABOVE ########
for (i in 1:8) {
  cal <- mat_pvc[i,]
  cal_max <- max(cal)
  print(cal_max)
}
###################### USE APPLY #########################
##### apply( an array or matrix, Margin, Function)########
# To calculate max row wise
apply(mat_pvc, 1, max)
# To calculate max column wise
apply(mat_pvc, 2, max)
########### USING DATAFRAME WITH APPLY ##############
######### Convert matrix to a data frame ############
df_pvc <- as.data.frame(mat_pvc)
class(df_pvc)
apply(df_pvc, 1 , mean)
apply(df_pvc, 2 , mean)
df_pvc$Rating <- as.factor(1:4) #Adding one more column to data frame
df_pvc
df_pvc <- df_pvc[c(4,1:3)] #Rearranging the columns in data frame
apply(df_pvc, 1, mean)
apply(df_pvc[,c(2:4)], 1, mean) #Excluding 1st column and calculate mean
apply(df_pvc[,-1],1, mean) # Or use this to exclude first column
apply(df_pvc[,-c(1,4)], 1, mean)
###### Removing NA to calulate Mean ########
df_pvc[3,4] <- NA
df_pvc
apply(df_pvc[,-1], 1, mean)
apply(df_pvc[,-1],1, mean, na.rm=TRUE)
###### Using user-defined functions in apply #######
per <- function(x){
  x/100
}
apply(mat_pvc,1,per)
apply(mat_pvc,2,per)
###################################################
######## LAPPLY FUNCTION ###########
########### returns a List as output ##############
# use list
color.list <- list(color1=c(10,2,3,45,23,4,56), color2= c(45,98,2,6,10,23,56),
                   color3 = c(4,78,3,19,45,2,37), color4 = c(51,9,50,20,10,22,61))
color.list
lapply(color.list, mean)
# use dataframe
color.frame <- data.frame(color1=c(10,2,3,45,23,4,56), color2= c(45,98,2,6,10,23,56),
                          color3 = c(4,78,3,19,45,2,37), color4 = c(51,9,50,20,10,22,61))
color.frame
lapply(color.frame, mean)
# for string vectors
str.vec <- c( "Blue", "Green","Yellow", "Red")
lapply(str.vec, toupper)
lapply(str.vec, nchar)
############################################################
################### SAPPLY FUNCTION #####################
# returns a SIMPLIFIED output (Vector, List or Matrix#######
color.frame
sapply(color.frame,mean)
color.list
sapply(color.list, mean)
str.vec
sapply(str.vec, toupper)
sapply(str.vec, nchar)
vec1 <- c(first=2,second=4,third=6,fourth=8)
cal_fun<-function(x){
  x*x
}
sapply(vec1,cal_fun)
##############################################
######### TAPPLY FUNCTION ###########
### tapply(x, index, function...) ######
#For Vector
stuid <- c(110,111,112,113,114,115,116,117,118,119)
stu_marks <- c(78,45,90,39,89,98,79,98,67,87)
stu_section <- c("A","B","B","A","A","B","B","A","B","A")
tapply(stu_marks,stu_section,mean)
#For DataFrame
stu.df <- data.frame(STUDENT_ID =stuid,MARKS = stu_marks,SECTION=stu_section)
stu.df
tapply(stu.df$MARKS, stu.df$SECTION, mean)
#For List
stu.list <- list(STUDENT_ID =stuid,MARKS = stu_marks,SECTION=stu_section)
stu.list
tapply(stu.list$MARKS, stu.list$SECTION, mean)
####################################################
############# MAPPLY FUNCTION #############
###### Multivarite version of sapply ######
x<- 1:10
y<- 11:20
z<- 21:30
mapply(sum,x,y,z)
