# Matriz-Inversa-
#Este código em R é para atividades de programação do Coursera.
#Este algoritmo cria uma função "numeric" como exemplo
makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}
#depois, atribui a média da função anterior e devolve, caso o cálculo da média já tenha sido feita.
cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}
#o exercício, editado em outro arquivo, determina a matriz inversa de uma função...semalhante a esse código
#a matriz inserida deve ser devolvida o seu inverso com a função solve(matrix) e, caso tenha sido feito o
#seu inverso, devolver o valor da matriz anterior.
