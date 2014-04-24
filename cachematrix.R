## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
  
  if(is.null(x$getinverse()))
  {print("tada")
    t<-solve(x$getmatrix())
   print("tut")
    x$setinverse(t)
  }
  x$getinverse()
}
