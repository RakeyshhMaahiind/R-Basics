# R as a calculator
5+6
5-6
5*6
5/6
A=10
a=5
1:50 # print numbers 1 to 50
50:1 # print numbers 50 to 1 in reverse order
print(50:1)
print(1:50)

# Variables or objects in R
# Valid and invalid variables
# valid variables
var_name2.<-1  # has letters,numbers,dot and underscore
.var_name <-2 # can start with dot(.) but the dot should not be followed by any number
var.name <-3
var_name <-4 # only dot and underscore are allowed

# invalid vairables
2var_name<-5 # cannot start with a number
.2var_name<-6 # dot followed by a number makes it invalid
_var_name<- 7 # cannot start with a underscore

# Variable assignment
# The variables can be assigned value using leftward,rightward and eqaul to operator.
rk <- 'rakeyshh'
length<-8
width<-7
area= length * width
area

height<- 10
length<- 20
width<- 1
area= length * width * height
area

# Assignment using leftward operator

var1<- 15
var1
var2<- c("rakeyshh","maahiind")
var2

# assignment using rightward operator

15-> var.3
var.3
c("rakeyshh","maahiind")-> var4
var4

# assignment using equal operator
var.6= c(0,1,2,3)
var.6

# deleting variables
rm(a) # will remove all variables with var text in it
rm(a)

a=1:50
a
a=seq(1,9,by =3)
a

v1<-c(6,8,9)
v1
b<-rep(1,10)
b
c1<-rep(1:5,5)
c1 

# print statement in R
print("welcome to r programming session") # print anything

print(25.7+30.3) # print calculation


# data types in R vector,list,matrix,array,facor,dataframe

# vector- contains element of same class
# there are 6 types of these atomic vectors,also known as 6 classes of vector
#1. logical - true, false
a<- TRUE
a
class(a)
is.logical(a)

#2. Numeric
a<-10
a
class(a)
is.numeric(a)
b<-2L
b
class(b)

#3. character
a <- "hello"
a
class(a)
is.character(a)

#4. logical vector
a<- c(TRUE,FALSE,TRUE,FALSE)
a
class(a)
is.logical(a)
s<-c(1,2,3)
s
class(s)

#5. numeric vector
b <- c(1,1.2,3,5,7.2,5.897,-2,c(5,7,9))
b
class(b)
g <- c(2L,5L,7)
g
class(g)

#6.integer # whole numbers & not a fraction
h <- c(1L,4L,7L,6.22,4.5)
h
class(h)
d <- c(2L,34,0L,"basics") 
d
class(d)

d1 <- c(2L,3L,0L)
d1[1]+d1[2]

#complex vector 
d <- 5+9i
d
class(d)

#character vector
e <- c("right now","it is","11.15 am")
e
class(e)

var_1 <- c("rakeyshh",1526,"address",311)
var_1
class(var_1)
var_1[c(1,3)]
var_1[1:3]

# accessing vector elements by their indices or subsripts
a
a[1:3]
a[c(1,3)]

# viewing vectors in tubular formats
View(a) # onlt helpful in small length vectors

# List -  can contain many different types of elements inside it like vectors, 
# functions and even another list inside it

h<- list(23,21.3,"hello",c(1,2,3))
h
View(h)
class(h)
h[1]
h[2]
h[3]
h[[3]][1]
h[1:3]
h[[1]] <- 24
g<- c(23,21.3,c(2,3,5),"hello")
g
class(g)
View(g)
h<- c(23,21.3,c(2,5,3),"hello",3+5i,2L)
h
class(h)
View(h)
h<- list(23,21.3,c(2,5,3),"hello",3+5i,2L,mean)
h
class(h)
View(h)

h1 <- list(1,2,3)
# accesing list elements by their index.
h[[1]]
h[1]
h[[3]][2]


# Matrix - two-dimensional(rows*columns) rectangular data set 
# It can be created using a vector input to the matrix function
# The data elements must be of the same type
# All columns in a matrix must have the same type of mode(numeric, character, etc.) 
# and the same length

i<- matrix(c(10,20,30,40),nrow=2,ncol=2,byrow=FALSE)
i<- matrix(c(10,20,30),nrow=6,ncol=2,byrow=TRUE,
           dimnames=list(c('r1','r2','r3','r1','r2','r3'),c('c1','c2')))
i
# default value for byrow is false
class(i)
# accesing elements of matrix
i[3:6,2]

j <- array(c('r','programming','session'),dim = c(2,3,4))
j
class(j)
View(j)

# accessing an array
j[,,4] # 4th array
# Accessing individual array from an array
j[2,3,4] # 2nd row,3rd col, 4th array

#factor- variable which can take certain values(levels) and not any
k<- c("red",'green','blue','blue','blue','red')
class(k)
x <- factor(k)
class(x)
x
