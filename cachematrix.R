#creates a list of functions, which can set and  retrieve a matrix
#and its inverse 
makeCacheMatrix <- function(x = matrix()) {
  invMatrix<-NULL
 setmatrix<-function(y){
   invMatrix<<-NULL
   x<<-y
 }
 getmatrix<-function(){x}
 getinverse<-function(){invMatrix}
 setinverse<-function(m) invMatrix<<-m
 
   
   list(setmatrix=setmatrix,getmatrix=getmatrix,getinverse=getinverse,setinverse=setinverse)
}



# this function recieves x, a structure of the form makeCacheMatrix
# it returns a matrix that is the inverse of 'x'
#if the inverse is already calculated, just return it with getinverse
## else calculate the inverse and store it in the original object x

cacheSolve <- function(x) {
      if(is.null(x$getinverse()))
    {
    print("determining the inverse")
    t<-solve(x$getmatrix())
   
    x$setinverse(t)
  }
 
  x$getinverse()
}
