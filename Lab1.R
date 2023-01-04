#1. Створити змінні базових (atomic) типів. Базові типи: character, numeric,
#integer, complex, logical.
character <- 'a'
numeric <- 8.45
integer <- 6
complex <- 1 + 2i
logical <- TRUE
typeof(character)
typeof(logical)

#2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14,
#2.71, 0, 13; 100 значень TRUE
vector1 <- c(5:75)
vector2 <- c(3.14, 2.71, 0, 13)
vector3 <- c(rep(TRUE, 100))

#3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind
m <- matrix(c(0.5, 3.9, 0, 2, 1.3, 131, 2.2, 7, 3.5, 2.8, 4.6, 5.1), nrow = 4, ncol = 3)
m2 <- cbind( c(0.5, 3.9, 0, 2), c(1.3, 131, 2.2, 7), c(3.5, 2.8, 4.6, 5.1))


#4. Створити довільний список (list), в який включити всі базові типи.
list <- list('a', 8.45, as.integer(6), 1+2i, TRUE)

#5. Створити фактор з трьома рівнями «baby», «child», «adult».

factor1 <- factor(x =c('baby','child','adult', 'adult', 'baby', 'baby'),
                  levels = c('baby','child', 'adult'))

#6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA,
# 11. Знайти кількість значень NA.
x <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
num <- 0
index <- NULL
first_NA_found <- FALSE
for (i in 1:length(x))
{
  if(is.na(x[i] == TRUE))
     {
        if(first_NA_found == FALSE)
          {
          index <- i
          first_NA_found <- TRUE
          } 
        num <- num + 1
      }
}
print(index)
print(num)

#7. Створити довільний data frame та вивести в консоль.
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
print(x)

#8. Змінити імена стовпців цього data frame.
names(x) <- c('Nums', 'Logics')
print(x)

