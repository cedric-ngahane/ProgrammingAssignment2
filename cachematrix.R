## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
#create a special matrix which a can store in a cache        
        inv<-NULL
        
        set<-function(y){
                x<<-y
                inv<<-NULL
        }
                
        get<-function(){x}
        
        
        list(set=set,get=get)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      inv<-get("inv", envir=environment(x$get))
      if(!is.null(inv)) return(inv)
      inv<-solve(x$get())
      assign("inv",inv,envir=environment(x$get))
      return(inv)
      
}
