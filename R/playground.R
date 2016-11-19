source("make-data.R")
source("functions.R")

object_size(series)

system.time(cor(series))

system.time(cor(series[, 1:100]))

options(mc.cores = 1)
system.time(par_cor_naive(series[, 1:100]))

options(mc.cores = 2)
system.time(par_cor_naive(series[, 1:100]))

(par_cor_naive(series[, 1:10]))
(cor(series[, 1:10]))