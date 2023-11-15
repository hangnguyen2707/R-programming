#Câu 1
#7 thí sinh từ tỉnh 23 hoặc 29 từ data 1
data1 <- read.table("E:/Nguyễn Thị Thúy Hằng_11212065_R midterm/data1.txt",header=TRUE)
attach(data1)
library(dplyr)
random <- sample_n(subset(data1,tinh==23 | tinh==29),7)
random
#Câu 2
#Tìm số lượng nhân viên theo từng nhóm
data22 <- read.table("E:/Nguyễn Thị Thúy Hằng_11212065_R midterm/data22.txt",header=TRUE)
attach(data22)
so_luong_nhan_vien=table(Group)
so_luong_nhan_vien
#Tính phân vị
quar_1 <- quantile(subset(data22,Group=="Nhom1")$Data, probs = c(0.25, 0.5, 0.75))
quar_2 <- quantile(subset(data22,Group=="Nhom2")$Data, probs = c(0.25, 0.5, 0.75))
#Vẽ boxplot
Income=data22$Data
Group=data22$Group
bp=boxplot(Income~Group,data22, 
           xlab = list('Group', font = 4), ylab = list('Income', font=4), 
           main = list('Biểu đồ hộp thể hiện thu nhập theo các nhóm', col='red'),
           lwd = 2, col = c('lightblue', 'purple'),
           outpch = 25, whiskcol = "red"
)
text(x = rep(0.93, length(quar_1)), y = quar_1, labels = quar_1, pos = 4, col = "yellow", font=4)
text(x = rep(1.93, length(quar_2)), y = quar_2, labels = quar_2, pos = 4, col = "yellow", font = 4)
#phân tích cho từng nhóm
summary(subset(data22,Group=='Nhom1')) 
summary(subset(data22,Group=='Nhom2'))

#Câu 3
data3 <- read.table("E:/Nguyễn Thị Thúy Hằng_11212065_R midterm/data3.txt",header=TRUE)
unique(data3$Diadiem)
pairs(data3[c(2,3)],col= ifelse(data3$Diadiem=="CH1","blue",ifelse(data3$Diadiem=="CH2","red","green")),
      pch=16,
      labels=c("Gia mua","Gia ban"),
      main= "Quan hệ giữa giá mua và giá bán theo địa điểm")
par(xpd=TRUE)
legend("bottomright", legend=c("CH1","CH2","CH3"), fill=c('blue', 'red','green'))