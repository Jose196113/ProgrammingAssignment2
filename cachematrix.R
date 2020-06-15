## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Calculate the inverse matrix and store in the cache

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInv <- function(solve) m <<- mean
  getInv <- function() m
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)

}


## Write a short comment describing this function
## Search for the inverse matrix in cache
## if exist return it, else calculate
cacheSolve <- function(x, ...) {
  
  m <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInv(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
