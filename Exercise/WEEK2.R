# 使用C函數集結元素
x <- c(1,2,3,4) #數字向量
x
season_1 <- "spring"
season_2 <- "summer"
season_3 <- "autumn"
season_4 <- "winter"
four_seasons <- c("spring", "summer", "autumn", "winter") #???字向量
four_seasons
rep("2", times = 10)
rep("R", times = 10)
seq(from = 1, to = 10, by = 1) #等差函數
1:10

lucky_numbers <- c(7L, 24)
class(lucky_numbers[1])
lucky_numbers <- c(7L, FALSE)
lucky_numbers
class(lucky_numbers[2])
mixed_vars <- c(TRUE, 7L, 24, "spring")
mixed_vars
class(mixed_vars[1])
class(mixed_vars[2])
class(mixed_vars[3])

#方法一：中括號搭配索引值
favorite_season <- four_seasons[3]
favorite_season
favorite_seasons <- four_seasons[c(-2, -4)] # 我喜歡春天或秋天
favorite_seasons
#方法二：判斷運算???
my_favorite_season <- four_seasons == "autumn"
four_seasons[my_favorite_season]
my_favorite_seasons <- four_seasons == "spring" | four_seasons == "autumn" # 我喜歡春天或秋天
four_seasons[my_favorite_seasons]

numvec<-1:10 # c(1,2,3,4,5,6,7,8,9,10)
numvec+3 # 所有元素+3
numvec*2 # 所有元素*2
numvec1<-1:3 ## c(1,2,3)
numvec2<-4:6 ## c(4,5,6)
numvec1+numvec2
numvec1*numvec2

factor(c("大學生","碩士班學生","博士班學生"),
       levels = c("大學生","碩士班學生","博士班學生"))
ordered = FALSE
```
～因素是一個帶有層級（Levels）資訊的向量，我們使用 `factor()` 函數可以將向量轉換成因素向量，輸出因素向量時會將層級的資訊輸出。在轉換為因素向量時，可利用 `ordered = TRUE` 與 `levels =的參數`來排序。
```{r}
four_seasons <- c("spring", "summer", "autumn", "winter")
four_seasons
four_seasons_factor < factor(four_seasons)
four_seasons_factor
four_seasons_factor <- factor(four_seasons, ordered = TRUE, levels = c("summer", "winter", "spring", "autumn"))
four_seasons_factor
temperatures <- c("warm", "hot", "cold")
temp_factors <- factor(temperatures, ordered = TRUE, levels = c("cold", "warm", "hot"))
temp_factors
temperatures <- c("warm", "hot", "cold")
temp_factors <- factor(temperatures, ordered = TRUE)
temp_factors

my_mat <- matrix(1:6, nrow = 2)
my_mat
my_mat <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)
my_mat

my_mat <- matrix(c(1, 2, TRUE, FALSE, 3, 4), nrow = 2)
my_mat
class(my_mat[, 2]) # 原本第???欄（2nd column）的輸入是兩個邏輯值

my_mat <- matrix(1:6, nrow = 2)
my_mat
#???法???：中括號搭配索引值
my_mat[2, 3] # 選出位於（2, 3）這個位置的 6
my_mat[2, ] # 選出所有第???列（2nd row）的元素
my_mat[, 3] # 選出所有第三欄（2nd column）的元素
#???法???：判斷運算???
filter <- my_mat < 6 & my_mat > 1
my_mat[filter]

team_name <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
is_champion <- c(TRUE, FALSE)
season <- c("1995-96", "2015-16")
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season)
View(great_nba_teams)

great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFactors = FALSE)
str(great_nba_teams)

team_name <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
is_champion <- c(TRUE, FALSE)
season <- c("1995-96", "2015-16")
#???法???：stringsAsFactors = FALSE
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFactors = FALSE)
#???法???:as.character()
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season)
great_nba_teams[, 1] <- as.character(great_nba_teams[, 1])
great_nba_teams[, 5] <- as.character(great_nba_teams[, 5])

team_name <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
is_champion <- c(TRUE, FALSE)
season <- c("1995-96", "2015-16")
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season)
#方法一：中括號搭配索引值
great_nba_teams[1, 1] # 選出第一個變數的第一個觀測值 "Chicago Bulls"
great_nba_teams[1, ] # 選出第一個觀測值
great_nba_teams[, 1] # 選出第一個變數
#方法二：使用變數名稱來選擇
great_nba_teams[, "season"]
# **方法三：使用變數名稱與$來選擇**
great_nba_teams$team_name
#方法四：使用判斷運算???
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFactors = FALSE)
filter <- great_nba_teams$is_champion == TRUE
great_nba_teams[filter, ] # 注意這個逗號

my_arr <- array(1:20, dim = c(2, 2, 5))
my_arr

my_arr <- array(1:20, dim = c(2, 2, 5))
my_arr[, , 1] # 第一個矩陣
my_arr[, , 2] # 第二個矩陣
my_arr[, , 3] # 第三個矩陣
my_arr[, , 4] # 第四個矩陣
my_arr[, , 5] # 第五個矩陣
my_arr[1, , 2] # 選出第二個矩陣的第一個 row（觀察值）
my_arr[, 2, 2] # 選出第二個矩陣的第二個 column （變數）
my_arr[1, 2, 2] # 選出 7（元素）

# 單變數元素如文字數字、一維文字數字向量
listSample<-list(Students=c("Tom","Kobe","Emma","Amy"),Year=2017,
                 Score=c(60,50,80,40),School="CGU")
listSample

# 例：單變數元素、一維數字與文字向量、二維矩陣與資料框
title <- "Great NBA Teams"
teams <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
winning_percentage <- wins / (wins + losses)
season <- c("1995-96", "2015-16")
wins_losses <- matrix(c(wins, losses), nrow = 2)
df <- data.frame(Teams = teams, Winning_Percentage = winning_percentage, Season = season)
great_nba_teams <- list(title, teams, wins_losses, df)
great_nba_teams

list(1,2,3)
[[1]]
[[2]]
[[3]]
list(c(1,2,3))
[[1]]
list3 <- list(c(1,2,3), 3:7)
[[1]]
[[2]]

#方法一：用雙中括號選
great_nba_teams[[1]] # 選出清單中的第一個物件
great_nba_teams[[2]] # 選出清單中的第二個物件
great_nba_teams[[3]] # 選出清單中的第三個物件
great_nba_teams[[4]] # 選出清單中的第四個物件
great_nba_teams[[3]][1, ] # 選出芝加哥公牛隊 1995-96 的戰績
great_nba_teams[3][1, ] # 選出芝加哥公牛隊 1995-96 的戰績會產生錯誤
#方法二：用`$物件名稱`＃有點問題
great_nba_teams$teams # 選出 teams 這個向量
great_nba_teams$df # 選出 df 這個資料框
great_nba_teams$teams[1, ] # 選出 teams 這個向量選出芝加哥公牛隊 
great_nba_teams[[4]]$winning_percentage # 選出創紀錄的球季勝率

x <- 1:10
y <- 2 * x + 5
lm_fit <- lm(formula = y ~ x)
lm_fit$coefficients
lm_fit$coefficients[1] # 截距為 5
lm_fit$coefficients[2] # x 係數為 2



















