## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function creates a special matrix object that can store its inverse

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function (y) {
		x <<- y
		inv <<- NULL
}
get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function
#this function first computes the inverse of the matrix. It only does this once because otherwise it just
#retrieves the stored matrix. The inverse computation only happens once.

cacheSolve <- function(x, ...) {
	inv <- x$getinverse()
	if(!is.null(inv)) {
		message("getting cached data!")
		return(inv)
}
data <- x$get()
inv <- solve(data)
x$setinverse(inv)
inv
}
