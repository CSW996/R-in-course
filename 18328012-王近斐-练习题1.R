# 第二题
## 安装并加载Rcmdr
install.packages("Rcmdr")
library(Rcmdr)
## 安装并加载animation
install.packages('animation')
library(animation)
### 模拟蒲丰投针实验
buffon.needle(nmax = 500, interval = 0)
dev.off()
### 验证中心极限定理
f <- function(n) {
  rchisq(n, 5)
}
clt.ani(FUN = f)
dev.off()

# 第三题
A <- matrix(c(1:20), nr = 4, byrow = FALSE)
B <- matrix(c(1:20), nr = 4, byrow = TRUE)
A
B
## (1)
C <- A + B
C
## (2)
D <- A * B
D
## (3)
E <- (A * B)[1:4, 1:4]
E
## (4)
F <- A[c(1, 2, 3), c(1, 2, 3)]
F
### (5)
G <- B[,-3]
G

# 第4题
x <- rep(c(1, 2, 3, 4), c(5, 3, 4, 2))
x

# 第5题
id <- c(1:5)
name <- c('张三', '李四', '王五', '赵六', '丁一')
gender <- c('女', '男', '女', '男', '女')
age <- c(14, 15, 16, 14, 15)
height <- c(156, 165, 157, 162, 159)
weight <- c(42.0, 49, 41.5, 52, 45.5)
df <-
  data.frame(
    '序号' = id,
    '姓名' = name,
    '性别' = gender,
    '年龄' = age,
    '身高_cm' = height,
    '体重_kg' = weight
  )
df

# 第6题
text_6 <-
  '序号   姓名  性别 年龄 身高cm  体重kg
1 张三  女  14  156 42
2 李四  男  15  165 49
3 王五  女  16  157 41.5
4 赵六  男  14  162 52
5 丁一  女  15  159 45.5'

df6 <-
  read.table(text = text_6,
             header = TRUE,
             encoding = "UTF-8")
df6
# write.csv()写成csv文件
write.csv(df6, file = "exe2_4.csv")

# 第7题
name <-
  c(
    "Edward",
    "Cynthia",
    "Eugene",
    "Elizabeth",
    "Patrick",
    "John",
    "Albert",
    "Lawrence",
    "Joseph",
    "Leo"
  )
Gender <- c("G", "G", "B", "G", "B", "B", "B", "B", "B", "B")
Zep <- c("Y", "Y", "Y", "Y", "N", "Y", "N", "Y", "Y", "Y")
Weight <- c(16, 14, 13.5, 15.4, 16.5, 16, 17, 14.8, 17, 16.8)
Years <- c(3, 3, 3, 4, 3, 4, 3, 3, 4, 3)
Months <- c(5, 10, 5, 0, 8, 0, 11, 9, 1, 3)
Height <- c(100, 97, 95.5, 101, 100, 98.5, 103, 98, 101.5, 100)
children <-
  data.frame(Gender, Zep, Weight, Years, Months, Height, row.names = name)

# 计算均值
mean(Weight)
mean(Height)

# 计算BMI值
attach(children)
children$BMI <- Weight / ((Height / 100) ^ 2)
children

plot(Weight, Height)
title("Weight-Height Scatter plot")
detach(children)
