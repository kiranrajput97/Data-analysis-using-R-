######this package will execute the sql queries########

library(sqldf)
library(proto)
library(RSQLite)
library(sqldf)


######head 
a1r = head(warpbreaks)
a1s = sqldf("select * from warpbreaks limit 6")

identical(a1r,a1s)# it will match everthing

###subset

a2r = subset(CO2, grepl("^Qn", Plant))  # used to find out the pattern, it will match the pattern 
a2s = sqldf("select * from CO2 where plant like 'Qn%'")
all.equal(as.data.frame(a2r),a2s) #it will neglect few of the numberics and special characters

#Q1
a3s = sqldf("select * from warpbreaks where breaks > 50")
a3s

#Q2 find out the average breaks for wool type 'A' and 'B'

a4s= sqldf("select avg(breaks) from warpbreaks Group By wool ='A' & 'B'" )
a4s

#Q3 use CO2 dataset and display treatment and conc for missiippi type

a5s= sqldf("select conc, treatment from CO2 where type='mississippi'")
a5s

#Q4 find out the plants which get same treatment as Mn1

a6s= sqldf("select Plant from CO2 where Treatment=(select Treatment from CO2 where Plant='Mn1')")
a6s

a7s= sqldf("select distinct Plant from CO2 where Treatment=(select Treatment from CO2 where Plant='Mn1')")
a7s

library(MASS)
farms #OR
data(farms,package="MASS")
a7r = subset(farms,mang %in% c('BF','HF'))
