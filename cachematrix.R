## This function can cache the inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv=NULL
set<-function(y){
	x<<-y
	inv<<-NULL
}
get<-function() x
setmatrix<-function(solve) inv<<-inverse
getmatrix<-function() inv
list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
inv<-x$getmatrix()
if(!is.null(inv)){
	message("cache")
	return(inv)
}
apple<-x$get()
inv<-solve(apple)
x$setmatrix(inv)
inv
}
