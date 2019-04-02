star<-read.csv(file.choose())
star
rownames(star)
colnames(star)
is.data.frame(star)
A<-star$Survived
A
age<-star$Age
age

mean(age,na.rm = TRUE)
star
