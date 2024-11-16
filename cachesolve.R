cacheSolve <- function(x, ...) {
    inv <- x$getinverse()  # Retrieve cached inverse, if any

    # If inverse is cached, return it
    if (!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }

    # Otherwise, compute the inverse
    mat <- x$get()
    inv <- solve(mat, ...)  # Compute inverse using solve()
    x$setinverse(inv)       # Cache the computed inverse
    inv
}
