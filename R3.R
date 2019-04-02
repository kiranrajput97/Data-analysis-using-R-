#=====modes====.!

mode(1.234)
mode(c(5,6,7,8))
mode("India")
mode(factor(c("UP","MP")))
mode(lis("india","usa"))
mode(data.frame(x=1:2,y=c("INDIa","Usa")))
mode(print)

#=====lists examples

x1<-matrix(nrow=2,ncol=2,data=1:4,byrow=T)
x2<-matrix(nrow=2,ncol=2,data=5:8,byrow=T)
x1
x2
x1+x2
matrixlist <-list(x1,x2)
matrixlist
matrixlist[1]


#accessing different objects

z1 <- list(C("water","juice","lemonade"))
Rep(1:4,each=2),
matrix(data=5:8,nrow=2,ncol=2,byrow=T)
z1


#============Adding elements to the list

mat<-matrix(1:4, nrow=2,ncol=2)
my_list_new=


#===difference between dataframe and list



x3<-list(1:6)
x3
dim(x3)<-c(6)
mode(x3)


#===creating matrix of the list

ab <-1:10
dim(ab)<-c(2,3)
mode(ab)