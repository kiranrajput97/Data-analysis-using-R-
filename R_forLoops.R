for(temp in c(-4,-5,10,-6,-40,30)){
  if(temp>0){
    print("warm")
  }else{
    print("not so warm")
  }
}


for(degC in c(-3,6,2,5,9)){
  DegF<-degC*(9/5)+32
  print(c(degC,DegF))
}


for (i in 1:3){
  for(j in 1:3){
    print(i+j)
  }
}
