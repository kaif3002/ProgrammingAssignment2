makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL  

    # Function to set the matrix
    set <- function(y) {
        x <<- y
        inv <<- NULL  
    }

    # Function to get the matrix
    get <- function() x

    # Function to set the inverse
    setinverse <- function(inverse) inv <<- inverse

    # Function to get the inverse
    getinverse <- function() inv

    # Return a list of the above functions
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

