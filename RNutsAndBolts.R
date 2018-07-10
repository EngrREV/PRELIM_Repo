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
           