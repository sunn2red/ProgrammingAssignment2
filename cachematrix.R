## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<-function(p=matrix()) {
  
  m<-NULL
  set<-function(u) {
    p<<- u
    m<<-NULL
  }
  get<-function() p
  setsolve<-function(solve) m<<-solve
  getsolve<-function() m
  list(set=get,get=get,setsolve=setsolve,getsolve=getsolve)
  
}


## Write a short comment describing this function

cachesolve<-function(o,...) {
  ## Return a matrix that is the inverse of 'o'
  m<-o$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
    
  }
  
  data<-o$get()
  m<-solve(data,...)
  o$setsolve(m)
  m
  
}
