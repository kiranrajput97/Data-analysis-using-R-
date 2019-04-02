
#====Merge the list

xy<-1:10
yz<-rep("a",3)
my_list<-list(num=xy, chars=yz)
my_list
my_list[1][-2]



#=====adding 11 to 12 to list$num====

my_list$num <-c(xy,11:20)




#===accessing using names of list elements===


mylist$num
my_list["chars"]

#=======adding more elements to list==#
# ===to add more elements to list use c() function==#


mat<-matrix(1:4, nrow=2,ncol=2)
mat
my_list_new<-c(my_list,new_mat=mat)
my_list_new<-list(my_list,new_mat=mat)
my_list_new

pos<-1:6
art<-c("Don Mclearn","Booker T the MG's","the Beatels","the Rolling Stones","Fats Domino","Abba")
song<-c("")