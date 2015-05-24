## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        matrixreturn <- matrix(c(set ,   get,
               setinverse,
               getinverse), nrow =  1)
        colnames(matrixreturn) = c("set","get", 
                                   "setinverse",
                                   "getinverse")
        matrixreturn
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x[, 4]$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                retur(m)
        }
        data <- x[, 2]$get()
        m <- solve(data,...)
        x[, 3]$setinverse(m)
        m
}
