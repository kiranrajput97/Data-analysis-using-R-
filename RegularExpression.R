#####################################################
######## BASIC REGULAR EXPRESSION IN R###############
#####################################################

#   GREP--->Returns the index or value of he matched stringi##used for patern matching
#   grepl--> returns the boolian value(true or false )of the matched string
#   regexpr-> return the index of the first match 
#   gregexpr-> returns the index of all matches
#   regmatches-> returns the matched string at a specified index...#it is used in conjuctions with regexpr and gregexpr.


######  Meta characters-special characters likw!@#$%^&*() ############

dt <- c("Rprogramming%","percent")
grep(pattern = "Rprogramming\\%",x=dt,value=T)  #before using special character always use (\\)backslash so that the interpretator will be aware of special character

###detect all strings ###

dt <- c("may?","money$","and&")
grep(pattern ="[a-z][\\?-\\$-\\&]",x=dt,value = T)

##use to replace the special characters

gsub(pattern ="[\\?-\\$-\\&]",replacement="",x=dt)

gsub(pattern ="\\\\",replacement="-",x="Barcelona\\Spain")


###########QUANIFIERS####

number ="10100000000100"

#greedy(*)

regmatches(number,gregexpr(pattern="1.*1",text= number))

#NONgreedy(?) will serach only for one character 

regmatches(number,gregexpr(pattern="1.?1",text= number))

names <-c("anna","crispy","puerto","cristian","garcia","steven","alex","rudy")

#dosen't mater if e is a match 

grep(pattern="e*",x=names,value=T)

grep(pattern="t+",x=names,value=T)

grep(pattern = "n{2}",x=names,value=T)

#########     SEQUENCES     ################

string <- "I have been to paris 20 times"

##mach a digit 
# d is used for digits and D is used for non digits 

gsub(pattern="\\d+", replacement="-",x=string)
regmatches(string,regexpr(pattern="\\d+",text=string))

#match a non digit

gsub(pattern="\\D+", replacement="-",x=string)
regmatches(string,regexpr(pattern="\\D+",text=string))

# match a space - returns positions

gregexpr(pattern="\\s+",text = string)


# match a non space
# S is for non space(capital S)
# s is for space(small)

gsub(pattern="\\S+",replacement="app",x=string)

# match a word character

gsub(pattern="\\w",replacement="K",x=string)

#mach a non word character


##########character classes ############



