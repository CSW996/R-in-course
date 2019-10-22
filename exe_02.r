# 1.x = (1; 2; 3)T ; y = (4; 5; 6)T
x <- matrix(c(1,2,3), nr = 3)
y <- matrix(c(4,5,6), nr = 3)
e <- matrix(c(1,1,1), nr = 3)
# (1)z <- 2*x + y + e
z <- 2*x + y + e
z
# (2)x y 的内积
x %*% y # 不能出结果
# (3)x y 的外积
x %o% y

# 2. 1...20构成4*5的矩阵,A按列输入，B按行输入
A <- matrix(c(1:20), nr=4, byrow = FALSE)
B <- matrix(c(1:20), nr=4, byrow = TRUE)
A; B
# (1)
