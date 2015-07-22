## Put comments here that give an overall description of what your
## functions do

## This makes a list containing a function creating a matrix object, getting the matrix, and finding the inverse

makeCacheMatrix <- function(x = matrix()) {
  ### set the default as not existing
  m <- NULL
  ### this creates the matrix object
  setMatrix <- function(y) {
    x <<- y
    m <<- NULL
  }
  ### this takes the input matrix and puts it into the list
  getMatrix <- function() {x
  }
  ### sets what to inverse
  setinverse <- function(solve) {m <<-solve
  }
  ### this caches the inverse matrix
  getinverse <- function() {m
  }
  ### the list is created
  list(setMatrix = setMatrix, getMatrix = getMatrix, setinverse = setinverse,getinverse = getinverse)
 
}


##This one returns the inversed matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$getMatrix()
  m <- solve(data, ...)
  
  x$setinverse(m)
 
  m
  
}
