function_name <- function(��J1, ��J2, ..., ��J n, �Ѽ�1, �Ѽ�2, ..., �Ѽ� n){
  # �I�s��ƫ���檺�{���]�{���X����^
  return(��X)
}

# �ۭq���
my_squared <- function(x){
  y <- x^2
  return(y)
}
# �I�s���
my_squared(2)
my_squared(-2:2)

# �ۭq���
circle_area <- function(r){
  area <- pi * r^2 # R �y???�����ض�P�v pi
  return(area)
}
# �I�s���
circle_area(3)
circle_area(5)

# �ۭq���
circle_circum <- function(r){
  circum <- 2 * pi * r # R �y???�����ض�P�v pi
  return(circum)
}
# �I�s���
circle_circum(3)
circle_circum(5)

# �ۭq���
circle_calculator <- function(r, is_area){
  area <- pi * r^2
  circum <- 2 * pi * r
  if (is_area == TRUE){
    return(area)
  } else {
    return(circum)
  }
}
# �I�s���
circle_calculator(3, is_area = TRUE)
circle_calculator(3, is_area = FALSE)

># �ۭq���
  > ......
># �I�s���
  >circle_calculator(3)
Error in circle_calculator(3) :
  argument "is_area" is missing, with no default

> # �ۭq���
  > circle_calculator <- function(r, is_area = TRUE){
    + ...
    + }
> # �I�s���
  > circle_calculator(3)
[1] 28.27433

# �ۭq���
circle_calculator <- function(r){
  area <- pi * r^2
  circum <- 2 * pi * r
  ans_list <- list(area = area, circum = circum) # ���M�椤������R�W???�K??? $ ��???
  return(ans_list)
}
# �I�s���
circle_with_r_3 <- circle_calculator(3)
circle_with_r_3$area
circle_with_r_3$circum

# �w�q???�q���
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
# �I�s�ۭq���
ironmen <- c(50, 8, 16, 12, 6, 62)
paste("�̦h�G", ironmen_stats(ironmen)$max_ironmen, sep = '')
paste("�̤֡G", ironmen_stats(ironmen)$min_ironmen, sep = '')
paste("�`�ռơG", ironmen_stats(ironmen)$ttl_groups, sep = '')
paste("�`�K�H�ơG", ironmen_stats(ironmen)$ttl_ironmen, sep = '')

# �ۭq���
my_length <- function(x){
  counts <- 0
  for (i in x){
    counts <- counts + 1
  }
  return(counts)
}
# �إߤ@�ӦV�q
my_vec <- seq(from = 15, to = 87, by = 3)
# �I�s���ء]�~���^�P�ۭq���
length(my_vec)
my_length(my_vec)

# �ۭq���
my_sum <- function(x){
  summation <- 0
  for (i in x){
    summation <- summation + i
  }
  return(summation)
}
# �I�s���ػP�ۭq���
sum(1:10)
my_sum(1:10)

# �w�q�ۭq���
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
# �I�s�ۭq���
my_vector <- c(51, 8, 18, 13, 6, 64)
my_mean(my_vector)

a b c
1 1 1 1
2 2 2 2
3 3 3 NA
4 4 NA 4
5 NA 5 5

# �RNA
a b c
1 1 1 1
2 2 2 2
# ��999���N
a b c
1 1 1 1
2 2 2 2
3 3 3 999
4 4 999 4
5 999 5 5

# �ۭq���:
clean_data <- function(df, impute_value){
  n_rows <- nrow(df)
  na_sum <- rep(NA, times = n_rows)
  for (i in 1:n_rows){
    na_sum[i] <- sum(is.na(df[i, ])) # �p��C���[���Ȧ��X�� NA
    df[i, ][is.na(df[i, ])] <- impute_value # �� NA �άY�ӼƭȨ��N
  }
  complete_cases <- df[as.logical(!na_sum), ] # ��S���X�{ NA ���[���ȫO�d�U��
  imputed_data <- df
  df_list <- list(complete_cases = complete_cases, imputed_data = imputed_data)
  return(df_list)
}
# ���õL�������
messy_data <- data.frame(c(1, 2, 3, 4, NA), c(1, 2, 3, NA, 5), c(1, 2, NA, 4, 5))
names(messy_data) <- c("a", "b", "c")
# �I�s���
cleaned_data <- clean_data(messy_data, impute_value = 999)
cleaned_data$complete_cases
cleaned_data$imputed_data

# �w�q�ۭq���
exchange_sort <- function(input_vector, decreasing = FALSE) {
  input_vector_cloned <- input_vector # �ƻs???�ӿ�J�V�q
  # ���W�Ƨ�
  if (decreasing == FALSE) {
    for (i in 1:(length(input_vector) - 1)) {
      for (j in (i + 1):length(input_vector)) {
        # �p�G�e�@�ӼƦr���@�ӼƦr�j�h�洫��m
        if (input_vector_cloned[i] > input_vector_cloned[j]) {
          temp <- input_vector_cloned[i]
          input_vector_cloned[i] <- input_vector_cloned[j]
          input_vector_cloned[j] <- temp
        }
      }
    }
    # ����Ƨ�
  } else {
    for (i in 1:(length(input_vector) - 1)) {
      for (j in (i + 1):length(input_vector)) {
        # �p�G�e�@�ӼƦr���@�ӼƦr�j�h�洫��m
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
# �I�s�ۭq���
my_vector <- round(runif(10) * 100) # ���ͤ@���H����
my_vector # �ݬݥ��Ƨǫe
exchange_sort(my_vector) # �w�]���W�Ƨ�
exchange_sort(my_vector, decreasing = TRUE) # ���w�Ѽƻ���Ƨ�

ironmen <- c(50, 8, 16, 12, 6, 62)
ironmen_articles <- sapply(ironmen, function(x) x * 30)
ironmen_articles

as.integer(TRUE)
as.integer("TRUE")
print(int(True))
print(int("True"))

# �w�q�ۭq���
my_square <- function(input_number) {
  tryCatch({
    ans <- input_number^2
    return(ans)
  },
  error = function(e) {
    print("�п�J�ƭȡC")
  }
  )
}
# �I�s�ۭq���
my_square(3)
my_square('ironmen')





