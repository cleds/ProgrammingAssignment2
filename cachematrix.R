## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL #initializing inverse as NULL

  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x, ...){
  inv <- x$getInverse()
  if(!is.null(inv)){  # Checking whether inverse is NULL
    message("getting cached data")
    return(inv) # return inverse value
  }
  mat <- x$get()
  inv <- solve(mat, ...) #calculate inverse value
  x$setInverse(inv)
  inv
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
