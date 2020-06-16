## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Calculate the inverse matrix and store in the cache

makeCacheMatrix <- function(x = matrix()) {
## Define setters and getters  and make a list
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInv <- function(inverse) inv <<- inverse
  getInv <- function() inv
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)

}


## Write a short comment describing this function
## Search for the inverse matrix in cache
## if exist return it, else calculate
cacheSolve <- function(x, ...) {
  
  m <- x$getInv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInv(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
