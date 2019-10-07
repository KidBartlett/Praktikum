## erstelle Matrix
m <- as.data.frame(simdat(rows=5))

## Erstelle Features
feat <- genFeat(colnames(m))

res <- c()
for(i in feat) {
    res <-  cbind(res, eval(parse(text=i), envir=m))
}
colnames(res) <- feat

## Zusammenführen
m2 <- cbind(m,res)

head(m2)
                   
