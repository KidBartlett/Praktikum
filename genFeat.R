## x = cahracter vector
## bo = binary operators
genFeat <- function(n, bo=c("+", "-")) {
    require(arrangements)
    ## 2-combinations
    c2 <- combinations(length(n), 2)
    ## c2 <- c2[-nrow(c2),]
    c22 <- matrix(colnames(m)[c2],
                 ncol=2)
    res <- c()
    for(i in bo) {
        res <- c(res, apply(c22, 1, paste, collapse=i))
    }
    res
}

## compute new features
cnf <- function(d, features) {
    for(i in features) {
        print(i)
        with(d, {
            res <- as.formula(i)
        })
    }
}
