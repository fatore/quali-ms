
plotCurse = function(n=100,p=10) {

    data = rnorm(n)
    min = c()
    max = c()

    for (i in 2:p) {

        dmat = dist(data)
        min = c(min, min(dmat))
        max = c(max, max(dmat))
        data = cbind(data, rnorm(n))
    }

    plot(max, type="l",col="red", ylim=c(min(max,min),max(min,max)), xlab="Número de Dimensões", ylab="Distância")

    par(new=T)

    plot(min, type="l",col="blue", ylim=c(min(max,min),max(min,max)), axes=F, xlab="",ylab="")

    res = list()

    res$min = min
    res$max = max

    res
}



