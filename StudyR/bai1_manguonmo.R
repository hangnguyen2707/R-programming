solve_2 = function(a,b,c,i){
  if(a==0){
    if(b==0 & c==0){
      print("Phuong trinh vo so nghiem")
    }
    if(b==0 & c != 0 ){
      print("Phuong trinh vo nghiem")
    }
    else {
      print("Phuong trinh co nghiem :")
      round <- round(-c/b,digits=i)
      print(round)
    }
  }
  else{
    delta = b^2-4*a*c
    if(delta <0){
      print("Phuong trinh vo nghiem")
    }
    else if(delta == 0){
      x = -b/(2*a)
      round <- round(x,digits = i)
      print("Phuong trinh co nghiem kep x = ")
      print(round)
    }
    else if(delta > 0 ){
      x1 = (-b + sqrt(delta))/(2*a)
      x2 = (-b - sqrt(delta))/(2*a)
      rd1 <- round(x1,digits = i)
      rd2 <- round(x2,digits = i)
      print("Phuong trinh co 2 nghiem phan biet:")
      print(rd1)
      print(rd2)
    }
  }
}

# Truyền giá trị bằng cách sửa solve 2
solve_2(1,5,1,2)



c <- 12.58
dayso <- c(12.58,15.78)
is.double(dayso)
