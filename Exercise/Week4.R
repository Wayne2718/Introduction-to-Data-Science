if (����@) {
  # �{���@???
} else {
  # �{���G???
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
  print("�ή�")
}else{
  print("���ή�")
}
score<-80
if(score>=60){
  print("�ή�")
}else{
  print("���ή�")
}

my_seq <- 1:10
for (i in my_seq) {
  if (i %% 2 == 0) {
    print(paste(i, "�O����"))
  } else {
    print(paste(i, "�O�_��"))
  }
}

if (����@) {
  # �{���@???
} else if (����G) {
  # �{���G???
} else {
  # �{���T
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
  print("�u�q")
}else if(score>=60){
  print("�ή�")
}else{
  print("���ή�")
}

my_seq <- 1:10
for (i in my_seq) {
  if (i %% 3 == 0) {
    print(paste(i, "�i�H�Q 3 �㰣"))
  } else if (i %% 3 == 1) {
    print(paste(i, "���H 3 �l�ƬO 1"))
  } else {
    print(paste(i, "���H 3 �l�ƬO 2"))
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

CHscore<-95 ##��妨�Z
ENscore<-55 ##�^�妨�Z
if(CHscore>=60){
  if(ENscore>=60){
    print("�����ή�")
  }else{
    print("���ή�A�^��A�[�o")
  }
}else{
  if(ENscore>=60){
    print("�^��ή�A���A�[�o")
  }else{
    print("�������ή�")
  }
}

score<-80
ifelse(score>=60,"�ή�","���ή�")
scoreVector<-c(30,90,50,60,80)
ifelse(scoreVector>=60,"�ή�", "���ή�")

for (i in x){
  # �C�����N�n���檺�{��
}

for (n in 1:10){
  #n����@�ܼơA1:10���ݭn�v�@���檺�ѼƦV�q
  print(n)
}

for (month in month.name){
  print(month)
}

while (�Y�ر���){
  # �C�����N�n���檺�{��
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

flip_results <- c() # �إߤ@�ӪŪ��V�q�ө�m�C�@�����Y�����G
coin <- c(TRUE, FALSE) # TRUE �N�������AFALSE �N���ϭ�???
n_flips <- 1 # �q�Ĥ@�����Y�}�l�O��
while (sum(flip_results) < 3){
  flip_results[n_flips] <- sample(coin, size = 1) # �N�C�����Y���G�O���_��
  n_flips <- n_flips + 1 # �ǳưO���U�@�������Y���G
}
flip_results # �L�X�C�����Y������
length(flip_results) # �`�@���Y�F�X��

length(flip_results) # �`�@���Y�F�X��
[1] 3

length(flip_results) # �`�@���Y�F�X��
[1] 6

for (n in 1:10){
  if(n%%2==0){ #���ƪ�����X�Ʀr
    print(n)
  }else{
    print("�_��") #�_�ƫh��X"�_��"
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






