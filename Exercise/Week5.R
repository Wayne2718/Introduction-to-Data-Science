abs(-5)
abs(-5:-1)
abs("Hello")

sqrt(2)
sqrt(1:10)

ceiling(9.527)
nums <- sqrt(c(7, 17, 27, 37, 47))
nums
ceiling(nums)

floor(9.527)
nums <- sqrt(c(7, 17, 27, 37, 47))
nums
floor(nums)

round(9.527)
round(9.527, digits = 0)
round(9.527, digits = 1)
round(9.527, digits = 2)

exp(1)
exp(2)

log(exp(1))
log(exp(2))
log(exp(3))

log10(10)
log10(10^2)
log10(10^3)

toupper("Learn R the easy way")

tolower("Learn R the easy way")

my_char <- "Learn R the easy way"
substr(my_char, start = 1, stop = 5)
substr(my_char, start = 7, stop = 7)
substr(my_char, start = 9, stop = 11)
substr(my_char, start = 13, stop = 16)
substr(my_char, start = 18, stop = 20)

my_char <- c("Learn", "R", "the", "easy", "way")
grep(pattern = "Learn", my_char)
grep(pattern = "R", my_char)
grep(pattern = "the", my_char)
grep(pattern = "easy", my_char)
grep(pattern = "way", my_char)
grep(pattern = "xyz", my_char)

my_char <- c("Learn", "R", "the", "easy", "way")
grep(pattern = "learn", my_char)
integer(0)
grep(pattern = "learn", my_char, ignore.case = TRUE)

my_char <- c("Learn", "R", "the", "easy", "way")
sub(pattern = "easy", replacement = "effortless", my_char)
my_char <- c("Learn", "R", "the", "easy", "way")
sub(pattern = "EASY", replacement = "effortless", my_char)
sub(pattern = "EASY", replacement = "effortless", my_char, ignore.case = TRUE)

my_char <- "Learn R the easy way"
strsplit(my_char, split = " ") # 使用一個空格作為切割的根據
[[1]]
my_char <- "Learn,R,the,easy,way"
strsplit(my_char, split = ",") # 使用一個逗號作為切割的根據
[[1]]

char_1 <- "Learn"
char_2 <- "R"
char_3 <- "the"
char_4 <- "easy"
char_5 <- "way"
paste(char_1, char_2, char_3, char_4, char_5)
paste(char_1, char_2, char_3, char_4, char_5, sep = ",")
paste(char_1, char_2, char_3, char_4, char_5, sep = "")

my_seq <- 1:5
mean(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
mean(my_seq) # 輸出為 NA
mean(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
sd(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
sd(my_seq)
sd(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
median(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
median(my_seq)
median(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
range(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
range(my_seq)
range(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
sum(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
sum(my_seq)
sum(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
max(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
max(my_seq)
max(my_seq, na.rm = TRUE) # 排除遺漏值

my_seq <- 1:5
min(my_seq)
my_seq <- c(my_seq, NA) # 加入一個 NA
min(my_seq)
min(my_seq, na.rm = TRUE) # 排除遺漏值





