## Generate matrix with simulated data
simdat <- function(rows=100,
                   colmeans=c(5, 10, 12, 15, 45),
                   colsd=c(2, 7, 4, 9, 25),
                   names=NULL) {
    res <- c()
    for(i in 1:length(colmeans)) {
        res <- cbind(res, rnorm(rows, mean=colmeans[i], sd=colsd[i]))
    }
    if(is.null(names
               )) 
        colnames(res) <- paste("C", 1:ncol(res), sep=".")
    return(res)
}

