library(lpSolve)


#####PROYECTOS FRACCIONABLES#####

obj <- c(667, 66, 142, 92, 125, 8)
mat <- matrix(c(900, 375, 668, 38, 425, 259,
              375, 173, 92, 94, 420, 26), nrow = 2, byrow = TRUE)
dir <- c("<=", ">=")
rhs <- c(1750, 600)


lp("max", obj, mat, dir, rhs, all.bin =  TRUE)
lp("max", obj, mat, dir, rhs, all.bin = TRUE)$solution


#####CASO 4 - PRESUPUESTO DE CAPITAL CON RESTRICCIONES#####


obj <- c(799, 67, 168, -1082, 93, 131, 8)
mat <- matrix(c(500, 230, 123, 245, 125, 560, 35,
                800, 300, 200, 1000, 300, 329, 10,
                780, 100, 343, 54, 300, 220, 10,
                1200, 500, 345, 2345, 567, 890, 50), nrow = 4, byrow = TRUE)
dir <- c(">=", ">=", ">=", "<=")
rhs <- c(600, 1000, 1000, 1600)

lp("max", obj, mat, dir, rhs, all.bin =  TRUE)
lp("max", obj, mat, dir, rhs, all.bin = TRUE)$solution

#####NO FRACCIONABLES (IMPORTE Y PROYECTOS)#####



obj <- c(44900, 24500, 19050, 20000, 19250, 29800)
mat <- matrix(c(55100, 25500, 15950, 45000, 20750, 25200), nrow = 1, byrow = TRUE)
dir <- c("<=")
rhs <- c(100000)

lp("max", obj, mat, dir, rhs, all.bin =  TRUE)
lp("max", obj, mat, dir, rhs, all.bin  = TRUE)$solution