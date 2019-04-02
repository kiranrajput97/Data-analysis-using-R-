#======while loop

while(TRUE)
{
  print("hello")
  
}

counter<-1
while (counter<=10) {
  print(counter)
  counter<-counter+1
}

#=========for loop

for(i in 1:50)
{
  print(i)
  i<-i+1
}


for(i in 1:5)
{
  print("hello")
}

#==generates a random number 


rnorm(3,mean=0,sd=1)
rnorm

#======if else if 


i<-rnorm(1)
if(i>1)
{
  print("greater than 1")
}else if(i <1 && 1>-1)
{
  print("number between -1 and 1")
}else
{
  print("number less than -1")
}


#==take 10 random number using loop

n<-5
counter <-0
for(i in rnorm (n)){
  if(i>-1 && i<1){
    counter<-counter+1
  }
}
counter/n