if (條件一) {
  # 程式一???
} else {
  # 程式二???
}

weather <- sample(c("sunny", "rainy"), size = 1)
weather
if (weather == "sunny"){
  print("Running outdoors!")
} else {
  print("Working out in the gym!")
}

weather <- sample(c("sunny", "rainy"), size = 1)
weather
[1] "sunny"
>if (weather == "sunny"){
  + print("Running outdoors!")
  + } else {
    + print("Working out in the gym!")
    + }
[1] "Running outdoors!"

weather <- sample(c("sunny", "rainy"), size = 1)
weather
[1] "rainy"
>if (weather == "sunny"){
  + print("Running outdoors!")
  + } else {
    + print("Working out in the gym!")
    + }
[1] "Working out in the gym!"

score<-59
if(score>=60){
  print("及格")
}else{
  print("不及格")
}
score<-80
if(score>=60){
  print("及格")
}else{
  print("不及格")
}

my_seq <- 1:10
for (i in my_seq) {
  if (i %% 2 == 0) {
    print(paste(i, "是偶數"))
  } else {
    print(paste(i, "是奇數"))
  }
}

if (條件一) {
  # 程式一???
} else if (條件二) {
  # 程式二???
} else {
  # 程式三
}

weather <- sample(c("sunny", "rainy", "cloudy"), size = 1)
weather
if (weather == "sunny"){
  print("Running outdoors!")
} else if (weather == "cloudy"){
  print("Cycling!")
} else {
  print("Working out in the gym!")
}

weather <- sample(c("sunny", "rainy", "cloudy"), size = 1)
weather
[1] "sunny"
>if (weather == "sunny"){
  + print("Running outdoors!")
  + } else if (weather == "cloudy"){
    + print("Cycling!")
    + } else {
      + print("Working out in the gym!")
      + }
[1] "Running outdoors!"

weather <- sample(c("sunny", "rainy", "cloudy"), size = 1)
weather
[1] "cloudy"
>if (weather == "sunny"){
  + print("Running outdoors!")
  +} else if (weather == "cloudy"){
    + print("Cycling!")
    + } else {
      + print("Working out in the gym!")
      + }
[1] "Cycling!"

weather <- sample(c("sunny", "rainy", "cloudy"), size = 1)
weather
[1] "rainy"
> if (weather == "sunny"){
  + print("Running outdoors!")
  + } else if (weather == "cloudy"){
    + print("Cycling!")
    + } else {
      + print("Working out in the gym!")
      + }
[1] "Working out in the gym!"

score<-95
if(score>=90){
  print("優秀")
}else if(score>=60){
  print("及格")
}else{
  print("不及格")
}

my_seq <- 1:10
for (i in my_seq) {
  if (i %% 3 == 0) {
    print(paste(i, "可以被 3 整除"))
  } else if (i %% 3 == 1) {
    print(paste(i, "除以 3 餘數是 1"))
  } else {
    print(paste(i, "除以 3 餘數是 2"))
  }
}

weather <- sample(c("sunny", "cloudy", "drizzle", "showers", "storm"), size = 1)
weather
if (weather == "sunny"){
  print("Running outdoors!")
} else if (weather == "cloudy"){
  print("Cycling!")
} else if (weather == "drizzle") {
  print("Working out in the gym!")
} else {
  print("Couch potato.")
}

> weather <- sample(c("sunny", "cloudy", "drizzle", "showers", "storm"), size = 1)
> weather
[1] "sunny"
> if (weather == "sunny"){
  + print("Running outdoors!")
  + } else if (weather == "cloudy"){
    + print("Cycling!")
    + } else if (weather == "drizzle") {
      + print("Working out in the gym!")
      + } else {
        + print("Couch potato.")
        + }
[1] "Running outdoors!"

> weather <- sample(c("sunny", "cloudy", "drizzle", "showers", "storm"), size = 1)
> weather
[1] "cloudy"
> if (weather == "sunny"){
  + print("Running outdoors!")
  + } else if (weather == "cloudy"){
    + print("Cycling!")
    + } else if (weather == "drizzle") {
      + print("Working out in the gym!")
      + } else {
        + print("Couch potato.")
        + }
[1] "Cycling!"

> weather <- sample(c("sunny", "cloudy", "drizzle", "showers", "storm"), size = 1)
> weather
[1] "drizzle"
> if (weather == "sunny"){
  + print("Running outdoors!")
  + } else if (weather == "cloudy"){
    + print("Cycling!")
    + } else if (weather == "drizzle") {
      + print("Working out in the gym!")
      + } else {
        + print("Couch potato.")
        + }
[1] "Working out in the gym!"

> weather <- sample(c("sunny", "cloudy", "drizzle", "showers", "storm"), size = 1)
> weather
[1] "storm"
> if (weather == "sunny"){
  + print("Running outdoors!")
  + } else if (weather == "cloudy"){
    + print("Cycling!")
    + } else if (weather == "drizzle") {
      + print("Working out in the gym!")
      + } else {
        + print("Couch potato.")
        + }
[1] "Couch potato."

CHscore<-95 ##國文成績
ENscore<-55 ##英文成績
if(CHscore>=60){
  if(ENscore>=60){
    print("全部及格")
  }else{
    print("國文及格，英文再加油")
  }
}else{
  if(ENscore>=60){
    print("英文及格，國文再加油")
  }else{
    print("全部不及格")
  }
}

score<-80
ifelse(score>=60,"及格","不及格")
scoreVector<-c(30,90,50,60,80)
ifelse(scoreVector>=60,"及格", "不及格")

for (i in x){
  # 每次迭代要執行的程式
}

for (n in 1:10){
  #n為單一變數，1:10為需要逐一執行的參數向量
  print(n)
}

for (month in month.name){
  print(month)
}

while (某種條件){
  # 每次迭代要執行的程式
}

x <- 0
while (x<=5) {
  print(x)
  x<-x+1
}

i <- 1
while (i < 13){
  print(month.name[i])
  i <- i + 1
}

flip_results <- c() # 建立一個空的向量來放置每一次投擲的結果
coin <- c(TRUE, FALSE) # TRUE 代表正面，FALSE 代表反面???
n_flips <- 1 # 從第一次投擲開始記錄
while (sum(flip_results) < 3){
  flip_results[n_flips] <- sample(coin, size = 1) # 將每次投擲結果記錄起來
  n_flips <- n_flips + 1 # 準備記錄下一次的投擲結果
}
flip_results # 印出每次投擲的紀錄
length(flip_results) # 總共投擲了幾次

length(flip_results) # 總共投擲了幾次
[1] 3

length(flip_results) # 總共投擲了幾次
[1] 6

for (n in 1:10){
  if(n%%2==0){ #偶數直接輸出數字
    print(n)
  }else{
    print("奇數") #奇數則輸出"奇數"
  }
}

for (month in month.name){
  if (month == "April"){
    break
  } else {
    print(month)
  }
}

for (month in month.name){
  if (month == "April"){
    next
  } else {
    print(month)
  }
}







