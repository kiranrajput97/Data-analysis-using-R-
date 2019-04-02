install.packages("xlsx")
install.packages("gdata")
library(xlsx)
library(gdata)
getwd()
setwd("C://Users//karan rajput//Desktop//sem 6//R programming//Files_for_Importingdataset")


#==reading csv files

data1<-read.csv("AWARDS.csv")
data1
data1<-read.csv("AWARDS.csv",header = FALSE)
data1


#=reading csv file without header and adding a header

data2<-read.csv("emp_noheader.csv",header = FALSE)
data2
names(data2)<-c("EMPID","NUMBER")
data2

#===Importing sapce or tab delimited datafiles

data3<-read.csv("NIRF.txt")
data3
str(data_new)

#==Importing text file using read.table

data_new<- read.table("DataProduct.txt",sep=',')
data_new


#importing xlsx fils //bydefault this files will be data frame and converted into list as shown in line 47,51

data_excel<- read.xlsx("ACME_DATA.xlsx",1)
data_excel

data_excel<- read.xlsx("ACME_DATA.xlsx",sheetIndex = 2)
data_excel

data_excel<- read.xlsx("ACME_DATA.xlsx",sheetName = "ACME DATA")
data_excel

data_excel<- read.xlsx("ACME_DATA.xlsx",2, as.data.frame=FALSE)
data_excel

str(data_excel)
mode(data_excel)

#------List of file in your current working directory

list.files()

#==========Redirecting output into the file

v1<-c(2,4,5)
v2<-v1*2
cat("THe value of v2 is ",v2,"\n", file="new.txt")

#======using sink function to direct all output frpm print and cat

sink("newfile.txt")
v<-2
w<-4
z<-v+w
print(z)
cat("v is",v,"w is",w)
cat("now z is", z)
sink()


#=====save a script into file

sink("myfile.txt")
source("c.R")
v(2,2)
sink()

#====writing into csv file

write.csv(data,file="new_awards.csv", row.names=TRUE)




