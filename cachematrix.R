## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  
  ## inverse matrix cache variable
  inversemat <<- NULL

  ## sets main matrix only
  set <- function(y) {
    
    ## set main matrix
    x <<- y
    
    ## clear inverse cache
    inversemat <<- NULL
  }
  
  ## sets both main matrix and inverse cache
  set.and.invert <- function(y) {
    x <<- y
    inversemat <<- invert(x)
  }
  
  
  ## claculates and sets the inverse cache
  invert <- function(y) {
    inversemat <<- solve(x)
    ## returns inverse
    inversemat
  }
  
  
  ## gets main matrix
  get <- function() x

  ## gest inverse
  getinverse <- function() inversemat
  
  ## list of available functions
  list(
      set            = set,
      invert         = invert,
      set.and.invert = set.and.invert,
      get            = get,
      getinverse     = getinverse)
}


## Sample usage of makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse<-x$getinverse()
  ## if inverse not yet cached
  if( is.null( inverse ) ){
    ## set inverse in cache
    
    ## return new inverse
    return (x$invert())
  } 
  else { ## alredy en cache
    return (inverse)
  } 
  
  
}
