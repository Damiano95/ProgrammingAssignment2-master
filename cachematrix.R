## the purpose of these function is to create the inverse of a Matrix and store
## the resalt in order to use that if it's nedeed multiple times

## the firse function has to create all objects nedeed to run the second funtion

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse<-function(inverse) m<<-inverse
        getinverse<-function() m
        list(set=set, get=get, 
             setinverse=setinverse,
             getinverse=getinverse)

}


## this function takes the resault from the previous one and calculate the 
## inverse matrix. If the inverse is altready calculated the function returns
## the value of the inverse without others calculations

cacheSolve <- function(x, ...) {
        m<-x$getinverse()
        if(!is.null(m)) {
                message("getting chaced data")
                return(m)
        }
        data<-x$get()
        m<-solve(data,...)
        x$setinverse(m)
        m
}