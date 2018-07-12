##Entering inputs
x<- 1
x
msg<- "hello"
y<-1:20
y
z <- 1.3
z
##Creating Vectors
x <-c(0.5,0.6)
x
x <-c(TRUE,FALSE)
x
x <-c(T,F)
x
x <-c("a","b","c")
x
x <-9:29
x
x <-c(1+0i,2+4i)
x
x <-vector("numeric", length = 10)
x
x <-c(1.7,"a")
x
x <-c(TRUE,2)
x
x <-c("a",TRUE)
x
##Explicit Coercion
x<- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

x<- c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)

x<-list(1,"a", TRUE, 1 + 4i)
x

##Matrices
m<- matrix(nrow = 2,ncol = 3)
m
dim(m)
attributes(m)

m<- matrix(1:6,nrow = 2,ncol = 3)
m

m<- 1:10
m

dim(m)<- c(2,5)
m

x<- 1:3
y<- 10:12
cbind(x,y)
rbind(x,y)

##Factors
x<- factor(c("Heaven","Hell","Heaven","Hell","Heaven","Heaven","Heaven"))
x
table(x)
unclass(x)

x<- factor(c("Heaven","Hell","Heaven","Hell","Heaven","Heaven","Heaven"), levels = c("Hell","Heaven"))
x

##Missing Values
x<- c(1,2,NA,10,3)
is.na(x)
is.nan(x)

x<- c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)

##DataFrames
x<-data.frame(foo = 1:4, bar = c(T,T,F,F))
nrow(x)
ncol(x)

##Names
x<- 1:3
names(x)
names(x)<- c("foo","bar","norf")
x
names(x)

##Names-List
x<- list(a = 1,b = 2, c = 3)
x
##Names- Matrices
m<- matrix(1:4, nrow =2, ncol = 2)
dimnames(m) <- list(c("a","b"),c("c","d"))
m

##Ddput-ting R Objects
y <- data.frame(a = 1 , b = "a")
dput(y)
dput(y, file = "y.R")
y <- dget("y.R")
y

##Dumping
x<- "foo"
y<- data.frame(a = 1, b = "a")
dump(c("x","y"), file = "data.R")
rm(x,y)
source("data.R")
y
x

##Subsetting
x<- c("a", "b", "c", "c", "d", "a")
x[1]
x[2]
x[1:4]
x[x > "a"]
u<- x > "a"
u
x[u]

##Subsetting-List
x<-list(foo = 1:4, bar = 0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]

x<- list(foo = 1:4, bar = 0.6 , baz = "hello")
x[c(1, 3)]

x<- list(foo = 1:4, bar = 0.6 , baz = "hello")
name<- "foo"
x[[name]]
x$name
x$foo

#Nested Elements of list
x<-list(a = list(10,12,14), b = c(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]

x[[c(2,1)]]

##Subsetting matrices
x<-matrix(1:6,2,3)
x[1,2]
x[2,1]
x[1, ]
x[, 2]

x<-matrix(1:6,2,3)
x[1,2]

x[1,2,drop = FALSE]

x<-matrix(1:6,2,3)
x[1, ]
x[1, , drop = FALSE]

##Subsetting with names(Partial Matching)
x<-list(aardvark = 1:5)
x$a
x[["a"]]
x[["a", exact = FALSE]]

##Removing NA Values
x<-c(1,2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x<-c(1,2, NA, 4, NA, 5)
y<-c("a","b", NA, "d", NA, "f")
good <- complete.cases(x,y)
good
x[good]
y[good]

airquality[1:6, ]
good <- complete.cases(airquality)

airquality[good, ][1:6, ]

##Vectorized Operations
x<- 1:4; y<- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y

x<-matrix(1:4, 2, 2) ; y <- matrix(rep(10,4), 2, 2)
x * y
x / y
x %*% y
