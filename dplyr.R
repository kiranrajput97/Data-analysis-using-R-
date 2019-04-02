install.packages("dplyr")
library(dplyr)

sales_df  <-read.csv("C://Users//karan rajput//Desktop//sem 6//R programming//sales.csv")
head(sales_df)


##############filter in dplr##############
###base R mehod o find out details when order is shipped on same dayy and shipping cost is greaer han 900

sales_df[sales_df$Ship.Mode=="First Class" & sales_df$Shipping.Cost>900,]
str(sales_df)

### use dplyr (filter)in simpler way

filter(sales_df,Ship.Mode=="First Class", Shipping.Cost>900)# , is used for and or can be ampersand


filter(sales_df, Country=="Australia" | Country=="Germany")# pipe is used for Or condition
filter(sales_df, Country %in% c("Australia","Germany"))


####base methd to extract some coloums

sales_df[,c("order.ID","Quanity")]


########SELECT IN DPYLR###########

select(sales_df,Order.ID,Quantity)
select(sales_df, Order.ID:Customer.ID)
select(sales_df,contains("Order"),contains("ship"))


###########pipe operator : %>% this operator alloys you ####
########### to pipe the output from one function to the input of another device ####
######      use of  %>% infix operator for chaining ###########


####Nested Approach###########

filter(select(sales_df,Category, Product.Name, Sub.Category), Sub.Category=="Phones")

###chaning approach###

sales_df %>% select(Category,Product.Name,Sub.Category)%>%filter(Sub.Category=="Phones")


######ARRANGE IN DPLYR############
########### BASE r MWTHOD TO ARRANGE THE ROWS

sales_df[order(sales_df$Shipping.Cost), c("Shipping.Cost","Order.ID")]

###########using arrange #########

sales_df %>% select(Shipping.Cost,Order.ID)%>% arrange(Shipping.Cost)# by default ascessing order
sales_df %>% select(Shipping.Cost,Order.ID)%>% arrange(desc(Shipping.Cost))


#########create New variables using MUTATE in DPLYR ###########

sales_df$Total.Cost <- sales_df$Shipping.Cost*sales_df$Quantity
sales_df[,c("Shipping.Cost","Quantity","Total.Cost")]
sales_df$Total.cost <-NULL
head(sales_df)

#######using mutate#################

sales_df%>%select(Shipping.Cost,Quantity)%>% mutate(Total.Cost=Shipping.Cost*Quantity)
head(sales_df)

#########summarise funcion##########
#Base R

with(sales_df,tapply(sales_df$Shipping.Cost,sales_df$Country,mean,na.rm=TRUE))

##******CASE1 APPLY ONE FUNCTION TO MANY VARIABLES*****************###
#WITH SUMMARISE

sales_df%>% summarise(Avg_Cost= mean(Shipping.Cost, na.rm = TRUE))
sales_df%>% group_by(Country)%>% summarise(Avg_Cost= mean(Shipping.Cost))

####for eash country calculate average shipping cost and discount

sales_df %>% group_by(Country) %>% summarise_each(funs(mean),Shipping.Cost,Discount)
sales_df %>% group_by(Country) %>% summarise_each(funs(min(.,na.rm=TRUE),max(.,na.rm=TRUE)),Shipping.Cost)

#***********case 2 APPLY MULTIPLE FUNCTIONS TO MANY VARIABLES *********

sales_df %>% summarise(min_Shipping.Cost=min(Shipping.Cost),max_Discount=max(Discount))

sales_df %>%group_by(Country) %>% summarise(min_Shipping.Cost=min(Shipping.Cost),max_Discount=max(Discount))


#*******case 3 APPLY MANY FUNCTIONS TO MANY VARIABLES @##########

sales_df %>% group_by(Country) %>% summarise_each(funs(min(.,na.rm=TRUE),max(.,na.rm = TRUE)),Shipping.Cost,Discount)

sales_df %>% group_by(Country) %>% summarise_each(funs(min(.,na.rm=TRUE),max(.,na.rm = TRUE)),Shipping.Cost,Discount)%>% 
   setNames(c("country","Min_shipping"," Min_Discount","MAx_Shipping","MAx_Discount"))













