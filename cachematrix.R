## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        matrix <- NULL

        set <- function(y) {
                matrix <<- y
                inverse <<- NULL
        }

        get <- function()
                matrix

        setInverse <- function(inv) {
                inverse <<- inv
        }

        getInverse <- function() {
                inv
        }

        list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()

        if(!is.null(inv)) {
                message("getting cached data: inverse")
                return(inv)
        }

        value <- x$get()

        inv <- solve(value)
        x$setInverse(inv)
        inv
}
