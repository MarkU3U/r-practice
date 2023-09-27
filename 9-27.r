#Basic Data Type-----
c("John", "Mary")
c(2, 3.1412)
c(TRUE, TRUE, F)

list("John", 178, TRUE)
typeof(c("John", "Mary"))
typeof(list("John", 178, TRUE))

#Binding-----
personName=c("John",'Mary')
interestingNumber=c(2,3.1412)
personName
interestingNumber

#PersonName call----
list("John",42, list("Mary", 35))
personName[[1]]
personName[[2]]


listExample=list("John",178,TRUE)

listExample
listExample[[1]]

#NAME YOU ELEMENT VALUES----
##name :John,age:38,height:178,isMarried:False----
recordExample=list(name="John",age="38",height="178","is married"=F)
recordExample2=list(name="John",age="38",height="178","is married"=F)
recordExample[[1]]
recordExample2[[1]]
listExample[c(1,2)]

#atomicExample----
atomicExample<-c(1,4,78,455,-23)
atomicExample[c(1:4)]
##by element names----
recordExample2
recordExample2[c("name","height","is married")]






















