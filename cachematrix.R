## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse_variable <- NULL
  set <- function(y) {
    x <<- y
    inverse_variable <<- NULL
  }
  get <- function() {x}
  set_inverse <- function(inverse) {inverse_variable <<- inverse}
  get_inverse <- function() {inverse_variable}
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}

cacheSolve <- function(x, ...) {
  inverse_variable <- x$get_inverse()
  if (!is.null(inverse_variable)) {
    message("getting cached data")
    return (inverse_variable)
  }
  data <- x$get()
  inverse_variable <- solve(data, ...)
  x$set_inverse(inverse_variable)
  inverse_variable
  
        ## Return a matrix that is the inverse of 'x'
}

