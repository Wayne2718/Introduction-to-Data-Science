function_name <- function(块1, 块2, ..., 块 n, 把计1, 把计2, ..., 把计 n){
  # ㊣ㄧ计磅︽祘Α祘Α絏セ砰
  return(块)
}

# 璹ㄧ计
my_squared <- function(x){
  y <- x^2
  return(y)
}
# ㊣ㄧ计
my_squared(2)
my_squared(-2:2)

# 璹ㄧ计
circle_area <- function(r){
  area <- pi * r^2 # R 粂???Τず蛾㏄瞯 pi
  return(area)
}
# ㊣ㄧ计
circle_area(3)
circle_area(5)

# 璹ㄧ计
circle_circum <- function(r){
  circum <- 2 * pi * r # R 粂???Τず蛾㏄瞯 pi
  return(circum)
}
# ㊣ㄧ计
circle_circum(3)
circle_circum(5)

# 璹ㄧ计
circle_calculator <- function(r, is_area){
  area <- pi * r^2
  circum <- 2 * pi * r
  if (is_area == TRUE){
    return(area)
  } else {
    return(circum)
  }
}
# ㊣ㄧ计
circle_calculator(3, is_area = TRUE)
circle_calculator(3, is_area = FALSE)

># 璹ㄧ计
  > ......
># ㊣ㄧ计
  >circle_calculator(3)
Error in circle_calculator(3) :
  argument "is_area" is missing, with no default

> # 璹ㄧ计
  > circle_calculator <- function(r, is_area = TRUE){
    + ...
    + }
> # ㊣ㄧ计
  > circle_calculator(3)
[1] 28.27433

# 璹ㄧ计
circle_calculator <- function(r){
  area <- pi * r^2
  circum <- 2 * pi * r
  ans_list <- list(area = area, circum = circum) # 睲虫いン㏑???獽??? $ ???
  return(ans_list)
}
# ㊣ㄧ计
circle_with_r_3 <- circle_calculator(3)
circle_with_r_3$area
circle_with_r_3$circum

# ﹚竡???璹ㄧ计
ironmen_stats <- function(ironmen_vector) {
  max_ironmen <- max(ironmen_vector)
  min_ironmen <- min(ironmen_vector)
  ttl_groups <- length(ironmen_vector)
  ttl_ironmen <- sum(ironmen_vector)
  stats_list <- list(max_ironmen = max_ironmen,
                     min_ironmen = min_ironmen,
                     ttl_groups = ttl_groups,
                     ttl_ironmen = ttl_ironmen
  )
  return(stats_list)
}
# ㊣璹ㄧ计
ironmen <- c(50, 8, 16, 12, 6, 62)
paste("程", ironmen_stats(ironmen)$max_ironmen, sep = '')
paste("程ぶ", ironmen_stats(ironmen)$min_ironmen, sep = '')
paste("羆舱计", ironmen_stats(ironmen)$ttl_groups, sep = '')
paste("羆臟计", ironmen_stats(ironmen)$ttl_ironmen, sep = '')

# 璹ㄧ计
my_length <- function(x){
  counts <- 0
  for (i in x){
    counts <- counts + 1
  }
  return(counts)
}
# ミ秖
my_vec <- seq(from = 15, to = 87, by = 3)
# ㊣ず场籔璹ㄧ计
length(my_vec)
my_length(my_vec)

# 璹ㄧ计
my_sum <- function(x){
  summation <- 0
  for (i in x){
    summation <- summation + i
  }
  return(summation)
}
# ㊣ず籔璹ㄧ计
sum(1:10)
my_sum(1:10)

# ﹚竡璹ㄧ计
my_mean <- function(input_vector) {
  my_sum <- function(input_vector) {
    temp_sum <- 0
    for (i in input_vector) {
      temp_sum <- temp_sum + i
    }
    return(temp_sum)
  }
  my_length <- function(input_vector) {
    temp_length <- 0
    for (i in input_vector) {
      temp_length <- temp_length + 1
    }
    return(temp_length)
  }
  return(my_sum(input_vector) / my_length(input_vector))
}
# ㊣璹ㄧ计
my_vector <- c(51, 8, 18, 13, 6, 64)
my_mean(my_vector)

a b c
1 1 1 1
2 2 2 2
3 3 3 NA
4 4 NA 4
5 NA 5 5

# NA
a b c
1 1 1 1
2 2 2 2
# ノ999
a b c
1 1 1 1
2 2 2 2
3 3 3 999
4 4 999 4
5 999 5 5

# 璹ㄧ计:
clean_data <- function(df, impute_value){
  n_rows <- nrow(df)
  na_sum <- rep(NA, times = n_rows)
  for (i in 1:n_rows){
    na_sum[i] <- sum(is.na(df[i, ])) # 璸衡–芠代Τ碭 NA
    df[i, ][is.na(df[i, ])] <- impute_value # р NA ノ琘计
  }
  complete_cases <- df[as.logical(!na_sum), ] # р⊿Τ瞷 NA 芠代玂痙ㄓ
  imputed_data <- df
  df_list <- list(complete_cases = complete_cases, imputed_data = imputed_data)
  return(df_list)
}
# 馒睹礚彻戈
messy_data <- data.frame(c(1, 2, 3, 4, NA), c(1, 2, 3, NA, 5), c(1, 2, NA, 4, 5))
names(messy_data) <- c("a", "b", "c")
# ㊣ㄧ计
cleaned_data <- clean_data(messy_data, impute_value = 999)
cleaned_data$complete_cases
cleaned_data$imputed_data

# ﹚竡璹ㄧ计
exchange_sort <- function(input_vector, decreasing = FALSE) {
  input_vector_cloned <- input_vector # 狡籹???块秖
  # 患糤逼
  if (decreasing == FALSE) {
    for (i in 1:(length(input_vector) - 1)) {
      for (j in (i + 1):length(input_vector)) {
        # 狦玡计ゑ计玥ユ传竚
        if (input_vector_cloned[i] > input_vector_cloned[j]) {
          temp <- input_vector_cloned[i]
          input_vector_cloned[i] <- input_vector_cloned[j]
          input_vector_cloned[j] <- temp
        }
      }
    }
    # 患搭逼
  } else {
    for (i in 1:(length(input_vector) - 1)) {
      for (j in (i + 1):length(input_vector)) {
        # 狦玡计ゑ计玥ユ传竚
        if (input_vector_cloned[i] < input_vector_cloned[j]) {
          temp <- input_vector_cloned[i]
          input_vector_cloned[i] <- input_vector_cloned[j]
          input_vector_cloned[j] <- temp
        }
      }
    }
  }
  return(input_vector_cloned)
}
# ㊣璹ㄧ计
my_vector <- round(runif(10) * 100) # 玻ネ舱繦诀计
my_vector # ゼ逼玡
exchange_sort(my_vector) # 箇砞患糤逼
exchange_sort(my_vector, decreasing = TRUE) # ﹚把计患搭逼

ironmen <- c(50, 8, 16, 12, 6, 62)
ironmen_articles <- sapply(ironmen, function(x) x * 30)
ironmen_articles

as.integer(TRUE)
as.integer("TRUE")
print(int(True))
print(int("True"))

# ﹚竡璹ㄧ计
my_square <- function(input_number) {
  tryCatch({
    ans <- input_number^2
    return(ans)
  },
  error = function(e) {
    print("叫块计")
  }
  )
}
# ㊣璹ㄧ计
my_square(3)
my_square('ironmen')






