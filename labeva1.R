#====================Q1

Titanic1<-read.csv(file.choose())

Titanic1

rownames(Titanic1)

colnames(Titanic1)
is.data.frame(Titanic1)

A<-Titanic1$Survived
A

age<-Titanic1$Age
age

mean(age,na.rm = TRUE)
Titanic1




#=====Q2

vec1<-c(10:12)
vec2<-c("Apple","Mango","Banana")
vec3<-c(34,45,56)
A1<-rbind(vec1,vec2,vec3)
A1
A2<-cbind(vec1,vec2,vec3)
A2
colnames(A1)<-c("E","F","G")
rownames(A2)<-c("A","B","C")
names()
A1
A2

names(vec1)<-c("E","F","G")
names(vec2)<-c("E","F","G")
names(vec3)<-c("E","F","G")

vec1
vec2
vec3
A6<-rbind(vec1,vec2,vec3)
A6
replace(56,A6,75)
A6

A7<-replace(34,A6,55)
A7


d<-cbind(c1,c2)
d
d1<-rbind(c1,c2)
d1
r1<-c(500,700,900)
r2<-c(800,900,1000)
r3<-c(700,800,900)
d<-rbind(r1,r2,r3)
d


Titanic1
str(Titanic1)

rownames(Titanic1)
colnames(Titanic1)
is.data.frame(Titanic1)
z<-Titanic1$Survived
z
age<-Titanic1$Age
age

mean(age,na.rm = TRUE)
Titanic1


#=========Q3


v<-1L:100L
v
length(subset(v,v%%3==0))



#=========Q4

X<- c("Male", "Female", "Female", "Male", "Female", "Male", "Female")

sex_vector <- c("Male", "Female", "Female", "Male", "Female", "Male", "Female")

x<-factor(x)
x
x<-factor(x,levels=c(1,0))

