## This assignment creates a pair of functions that cache the inverse of a matrix


## this function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## This function computes the inverse of the matrix returned from makeCacheMatrix above.


cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    matrix_to_invert <- x$get()
    inv <- solve(matrix_to_invert, ...)
    x$setinverse(inv)
    inv
  
        ## Return a matrix that is the inverse of 'x'
}
