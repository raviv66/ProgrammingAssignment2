## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

 m<-NULL #begins by setting the inverse to NULL
  set<-function(y){
    x<<-y
    m<<-NULL # resets inverse
  } #defines a function to set the matrix x to new matrix y
  get<-function() x  #returns the matrix, x
  setmatrix<-function(solve) m<<- solve # #sets the inverse
  getmatrix<-function() m  # returns inverse
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getmatrix() # Try getting it from cache
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  # Get ready for fresh computation of inverse
  matrix<-x$get() # get Matrix values
  m<-solve(matrix, ...)# Recompute inverse
  x$setmatrix(m) # set the invese for cache
  m # Return inverse
}
