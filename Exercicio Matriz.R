##função set(matrix) do exercício do Coursera
makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  
  set <- function(y) {
    
    x <<- y
    
    m <<- NULL
    
  }
  
  get <- function() x
  
  setSol <- function(solve) m <<- solve
  
  getSol <- function() m
  
  list(set = set, get = get,
       
       setSol = setSol,
       
       getSol = getSol)
} 
##Esta função verifica se a matriz inversa foi feita ou não
##caso foi feita, retorna com o valor da variável makeCache Matrix

cacheSolve <- function(x, ...) {
  
  m <- x$getSol()
  
  if(!is.null(m)) {
    
    message("obtendo dados do cache")
    
    return(m)
    
  }
  
  data <- x$get()
  
  
  m <- solve(data, ...)
  
  x$setSol(m)
  
  m
} 
