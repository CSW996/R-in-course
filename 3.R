weight <- c(55, 85, 75, 42, 93, 63, 58, 75, 89, 67)
height <- c(161, 185, 174, 154, 188, 178, 170, 167, 181, 178)
sex <- c(2, 1, 1, 2, 1, 1, 2)

plot(weight, height, col = sex, pch=1)

legend("topright",
       title = "sex",
       c("male", "female"),
       pch=1,
       col = c(1, 2))
