<<<<<<< HEAD
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { x=x+2
>>>>>>> 4af4442dfe23757b508a7b56d5838ce49a5f9f6d

makeCacheMatrix <- function(x = matrix()) { 
        inverse <- NULL
        # 1. set the value of the matrix : 
        
        
        set <- function(y) {
                
                x <<- y
                
                inverse <<- NULL
                
        }     
        # 2. get the value of the matrix
        
        get <- function() x
        
        setvect_inverse <- function(vect_inverse) inverse <<- vect_inverse
        
        getvect_inverse <- function() inverse
        # 3. set the value of inverse of the matrix
        list(set = set, get = get,
             
             setvect_inverse = setvect_inverse,
             # 4. get the value of inverse of the matrix                                                  
             getvect_inverse = getvect_inverse)                                          
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        # This function assumes that the matrix is always invertible.
        
        inverse <- x$getvect_inverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }                                       
        #It first checks if the inverse has already been computed
        data <- x$get()
        inverse <- solve(data, ...)
        x$setvect_inverse(inverse)
        inverse
}
