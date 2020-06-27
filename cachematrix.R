## Function pair that can cache the inverse of a matrix

##function that can cache matrix inverse

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  setInverse<-function(solveMatrix) inv<<-solveMatrix
  getinverse<-function()inv
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)

}


## function to calculate inverse and getting the from cache data 

cacheSolve <- function(x, ...) {
  inv<-x$Inverse()
  if(!is.null(inv)){
    message("getting cache data")
    return(inv)
}
  data<-x$get()
  inv<-solve(data)
  x$setInverse(inv)
  inv
  ## Return a matrix that is the inverse of 'x'
}
