makeCachematrix = function (x = matrix()){
  inv = NULL #initializing inverse as null
  set = function (y){
    x = y 
    inv = NULL
  } 
  get = function(){x} #function to get matrix x 
  setinverse = function (inverse){inv = inverse}
  getinverse = function(){inv} #function to get inverse of the matrix
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
cachesolve = function (x,...){ #gets cache data 
  inv= x$getinverse()
  if(!is.null(inverse)){ #checking whether inverse is null
    message ("getting cache data")
    return(inv) #returns inverse value 
  }
  mat = x$get() 
  inv= solve (mat,...) #calculated inverse value 
  x$setinverse()
  inv #returns a matrix that is inverse of 'X'
}
  