## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
library(matlib)

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) i <<- solve
        getinv <- function()  i
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinv()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data,...)
        x$setinv(i)
        i
}
