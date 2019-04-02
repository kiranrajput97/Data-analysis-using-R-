seq(from=1,to=100,by=5)

seq(from=20,to=1,by=-0.5)

seq(from=1,to=100,by=1.5)

seq(4:1)

seq(from=4, to=1)

seq(from=1,length(20),by=5)

a<-(20)
b<-(100)
c<-(5)
seq(a,b,c)

?repeat
  
x<-c(1,2,3,4,5,6,7,8,9)
rep(x,times=3)


x<-c(1,2,3,4,5,6,7,8,9)
rep(x,times=3, each=3)

rep(1:5,3:7)
z<-c("a","b","c")
rep(z,2)

letters[1:5]


letters[26:50]


letters[26:21]

c(2,4)+c(1,2,3,4)

c(1,2,3,4)+c(2,4)

Sys.Date()

Sys.time()

x<-seq(as.Date("1947-01-01"),as.Date("2019-01-01"),by=("years"))
x
x<-as.Date("1998-06-26")
y<-as.Date("2019-01-23")
z<-seq(x,y,by=("years"))
z


x<-as.Date("1998-06-26")
y<-as.Date("2019-01-23")
z<-seq(x,y,by=("months"))
z

x= c(4,5,NA,7,11,14,30,20)
mean(x)
is.na(x)

x<-c("a","b","c")
rep(x,5)
rep(x,5)
rep(x,5)
rep(x,5)
rep(x,5)


mdata<-1:20
mdata
a=matrix(mdata,4,5)
a
a[2,3]
a[2,]
a[,3]


#rbind

r1<-c("i" ,"am","happy")
r2<-c("what" ,"a","day")
r3<-c(1,2,3)

c<-rbind(r1,r2,r3)
c
c<-rbind(r1,r2)
c
c<-rbind(r2,r3)
c



#cbind

c1<- 1:5
c2<--1:-5
d<-cbind(c1,c2)
d


#giving names to vector


y1<-c(1,2,3,4,5)
y1
names(y1)<-c("a","b","c","d","e")
y1




r1<-c(500,800,700)
r2<-c(700,900,800)
r3<-c(900,1000,900)
d<-rbind(r1,r2,r3)
d
names(r1)<- c("Shirt1","shirt2","shirt3")
r1
names(r2)<- c("Shirt4","shirt5","shirt6")
r2
names(r3)<- c("Shirt7","shirt8","shirt9")
r3

r1
r2
r3

r1[1]
r2[2]
r3[3]




#naming rows and coloum in matrix


temp.vec<-rep(c("a","b","c"),each=3)
temp.vec

bravo<-matrix(temp.vec,3,3)
bravo

rownames(bravo)<-c("how","are","you")
bravo

colnames(bravo)<-c("I","am","fine")
bravo



#Seasons
z<-Seasons <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Players
Players <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Salaries
a<-KobeBryant_Salary <- c(15946875,17718750,19490625,21262500,23034375,24806250,25244493,27849149,30453805,23500000)
b<-JoeJohnson_Salary <- c(12000000,12744189,13488377,14232567,14976754,16324500,18038573,19752645,21466718,23180790)
c<-LeBronJames_Salary <- c(4621800,5828090,13041250,14410581,15779912,14500000,16022500,17545000,19067500,20644400)
d<-CarmeloAnthony_Salary <- c(3713640,4694041,13041250,14410581,15779912,17149243,18518574,19450000,22407474,22458000)
e<-DwightHoward_Salary <- c(4493160,4806720,6061274,13758000,15202590,16647180,18091770,19536360,20513178,21436271)
f<-ChrisBosh_Salary <- c(3348000,4235220,12455000,14410581,15779912,14500000,16022500,17545000,19067500,20644400)
g<-ChrisPaul_Salary <- c(3144240,3380160,3615960,4574189,13520500,14940153,16359805,17779458,18668431,20068563)
h<-KevinDurant_Salary <- c(0,0,4171200,4484040,4796880,6053663,15506632,16669630,17832627,18995624)
i<-DerrickRose_Salary <- c(0,0,0,4822800,5184480,5546160,6993708,16402500,17632688,18862875)
j<-DwayneWade_Salary <- c(3031920,3841443,13041250,14410581,15779912,14200000,15691000,17182000,18673000,15000000)



#1. Create a matrix where Seasons are columns and Player names are rows. 

r<-rbind(a,b,c,d,e,f,g,h,i,j)
r
rownames(r)<-Players
r
colnames(r)<-Seasons
r
#2. Display salary of DwayneWade, DerrickRose and ChrisPaul
r["DwayneWade_salary"]

myfunc <- function(x, y = 2){
  x = x + 10
  y = y + 100
  return(y)
}
myfunc(3)




stat1<-read.csv(file.choose())
stat1
nrow(stat1)

ncol(stat1)
head(stat1)
tail(stat1)

head(stat1,n=10)
tail(stat1,n=10)

summary(stat1)

#structure

str(stat1)

stat1
attach(stat1)
Birth.rate
detach(stat1)
stat1[3,3]
stat1[3,"birth.rate"]
stat1$Internet.users[2]
stat1[,"Internet.users"]
levels(stat1$Income.Group)
stat1[1:10,]
stat1[c(5:10),]
stat1[,c(2:5)]

getwd()

#to set new directiory use
#setwd("C://Users//karan rajput//Documents")
setwd("C://Users//karan rajput//Documents")
getwd()

#prebuild library in r

library(MASS)
Animals #dataset in r of prebuild library

#add coloumns

stat1$mycal <- stat1$Birth.rate+stat1$Internet.users
head(stat1)
stat1$xyz<-1:5
stat1
stat1$xyz<-NULL
stat1$mycal<-NULL

#Filtering data 

stat1$Internet.users < 2
filter

stat1[filter,]
stat1[stat1$Birth.rate>40 & stat1$Internet.users<2,]
stat1[stat1$Income.Group == "High income",]
stat1[stat1$Country.Name=="Malta",]
stat1[stat1$Income.Group == "low income",]


#how to create data frame from this vectors

Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")


mydf<-data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)
mydf
colnames(mydf)<-c("country","code","region")
mydf
rm(mydf)

#oranother way to name coloms is
mydf<-data.frame(country=Countries_2012_Dataset,code=Codes_2012_Dataset,region=Regions_2012_Dataset)
mydf
head(mydf)
tail(mydf)


#---------- installing packages external


install.packages("ggplot2")
library("ggplot2")

stat1
str(stat1)

qplot(data=stat1, x=Internet.users)
qplot()

#---------merging the packages 

mergedata<- merge(stat1,mydf,by.x="Country.Code",by.y = "code")
mergedata<- merge(mydf,stat1,by.x="code",by.y = "Country.Code")
mergedata

str(stat1)

mergedate$country<-NULL



#------------vectors
vect<-1:5
vect[runif(10,L1,L5)]