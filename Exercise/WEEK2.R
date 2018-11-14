# �ϥ�C��ƶ�������
x <- c(1,2,3,4) #�Ʀr�V�q
x
season_1 <- "spring"
season_2 <- "summer"
season_3 <- "autumn"
season_4 <- "winter"
four_seasons <- c("spring", "summer", "autumn", "winter") #???�r�V�q
four_seasons
rep("2", times = 10)
rep("R", times = 10)
seq(from = 1, to = 10, by = 1) #���t���
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

#��k�@�G���A���f�t���ޭ�
favorite_season <- four_seasons[3]
favorite_season
favorite_seasons <- four_seasons[c(-2, -4)] # �ڳ��w�K�ѩά��
favorite_seasons
#��k�G�G�P�_�B��???
my_favorite_season <- four_seasons == "autumn"
four_seasons[my_favorite_season]
my_favorite_seasons <- four_seasons == "spring" | four_seasons == "autumn" # �ڳ��w�K�ѩά��
four_seasons[my_favorite_seasons]

numvec<-1:10 # c(1,2,3,4,5,6,7,8,9,10)
numvec+3 # �Ҧ�����+3
numvec*2 # �Ҧ�����*2
numvec1<-1:3 ## c(1,2,3)
numvec2<-4:6 ## c(4,5,6)
numvec1+numvec2
numvec1*numvec2

factor(c("�j�ǥ�","�Ӥh�Z�ǥ�","�դh�Z�ǥ�"),
       levels = c("�j�ǥ�","�Ӥh�Z�ǥ�","�դh�Z�ǥ�"))
ordered = FALSE
```
��]���O�@�ӱa���h�š]Levels�^��T���V�q�A�ڭ̨ϥ� `factor()` ��ƥi�H�N�V�q�ഫ���]���V�q�A��X�]���V�q�ɷ|�N�h�Ū���T��X�C�b�ഫ���]���V�q�ɡA�i�Q�� `ordered = TRUE` �P `levels =���Ѽ�`�ӱƧǡC
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
class(my_mat[, 2]) # �쥻��???��]2nd column�^����J�O����޿��

my_mat <- matrix(1:6, nrow = 2)
my_mat
#???�k???�G���A���f�t���ޭ�
my_mat[2, 3] # ��X���]2, 3�^�o�Ӧ�m�� 6
my_mat[2, ] # ��X�Ҧ���???�C�]2nd row�^������
my_mat[, 3] # ��X�Ҧ��ĤT��]2nd column�^������
#???�k???�G�P�_�B��???
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
#???�k???�GstringsAsFactors = FALSE
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFactors = FALSE)
#???�k???:as.character()
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season)
great_nba_teams[, 1] <- as.character(great_nba_teams[, 1])
great_nba_teams[, 5] <- as.character(great_nba_teams[, 5])

team_name <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
is_champion <- c(TRUE, FALSE)
season <- c("1995-96", "2015-16")
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season)
#��k�@�G���A���f�t���ޭ�
great_nba_teams[1, 1] # ��X�Ĥ@���ܼƪ��Ĥ@���[���� "Chicago Bulls"
great_nba_teams[1, ] # ��X�Ĥ@���[����
great_nba_teams[, 1] # ��X�Ĥ@���ܼ�
#��k�G�G�ϥ��ܼƦW�٨ӿ��
great_nba_teams[, "season"]
# **��k�T�G�ϥ��ܼƦW�ٻP$�ӿ��**
great_nba_teams$team_name
#��k�|�G�ϥΧP�_�B��???
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFactors = FALSE)
filter <- great_nba_teams$is_champion == TRUE
great_nba_teams[filter, ] # �`�N�o�ӳr��

my_arr <- array(1:20, dim = c(2, 2, 5))
my_arr

my_arr <- array(1:20, dim = c(2, 2, 5))
my_arr[, , 1] # �Ĥ@�ӯx�}
my_arr[, , 2] # �ĤG�ӯx�}
my_arr[, , 3] # �ĤT�ӯx�}
my_arr[, , 4] # �ĥ|�ӯx�}
my_arr[, , 5] # �Ĥ��ӯx�}
my_arr[1, , 2] # ��X�ĤG�ӯx�}���Ĥ@�� row�]�[��ȡ^
my_arr[, 2, 2] # ��X�ĤG�ӯx�}���ĤG�� column �]�ܼơ^
my_arr[1, 2, 2] # ��X 7�]�����^

# ���ܼƤ����p��r�Ʀr�B�@����r�Ʀr�V�q
listSample<-list(Students=c("Tom","Kobe","Emma","Amy"),Year=2017,
                 Score=c(60,50,80,40),School="CGU")
listSample

# �ҡG���ܼƤ����B�@���Ʀr�P��r�V�q�B�G���x�}�P��Ʈ�
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

#��k�@�G�������A����
great_nba_teams[[1]] # ��X�M�椤���Ĥ@�Ӫ���
great_nba_teams[[2]] # ��X�M�椤���ĤG�Ӫ���
great_nba_teams[[3]] # ��X�M�椤���ĤT�Ӫ���
great_nba_teams[[4]] # ��X�M�椤���ĥ|�Ӫ���
great_nba_teams[[3]][1, ] # ��X�ۥ[�������� 1995-96 �����Z
great_nba_teams[3][1, ] # ��X�ۥ[�������� 1995-96 �����Z�|���Ϳ��~
#��k�G�G��`$����W��`�����I���D
great_nba_teams$teams # ��X teams �o�ӦV�q
great_nba_teams$df # ��X df �o�Ӹ�Ʈ�
great_nba_teams$teams[1, ] # ��X teams �o�ӦV�q��X�ۥ[�������� 
great_nba_teams[[4]]$winning_percentage # ��X�Ь������y�u�Ӳv

x <- 1:10
y <- 2 * x + 5
lm_fit <- lm(formula = y ~ x)
lm_fit$coefficients
lm_fit$coefficients[1] # �I�Z�� 5
lm_fit$coefficients[2] # x �Y�Ƭ� 2


















