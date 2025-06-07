greet <- function() {
  print("Hello, welcome to R programming!")
}

greet()
--------------------------------------
add_numbers <- function(a, b) {
  result <- a + b
  return(result)
}

# Call the function
sum <- add_numbers(5, 3)
print(sum)

-------------------
multiplication_table <- function(num) {
    for (i in 1:10) {
      cat(num, "x", i, "=", num * i, "\n")
    }
  }

# Call the function
multiplication_table(6)

-------------------------
is_prime <- function(n) {
    if (n <= 1) {
      return(FALSE)
    }
    for (i in 2:sqrt(n)) {
      if (n %% i == 0) {
        return(FALSE)
      }
    }
    return(TRUE)
  }

# Test the function
print(is_prime(13))  # TRUE
print(is_prime(15))  # FALSE

--------------------------------------
  # Define a function to check even or odd
  check_even_odd <- function(num) {
    if (num %% 2 == 0) {
      cat(num, "is even\n")
    } else {
      cat(num, "is odd\n")
    }
  }

# Take user input
num <- as.integer(readline(prompt = "Enter a number: "))

# Call the function
check_even_odd(num)


---------------------------------------------
greatest <- function(a, b, c) {
    if (a >= b && a >= c) {
      return(a)
    } else if (b >= a && b >= c) {
      return(b)
    } else {
      return(c)
    }
  }

# User input
x <- as.integer(readline("Enter first number: "))
y <- as.integer(readline("Enter second number: "))
z <- as.integer(readline("Enter third number: "))
cat("Greatest number is:", greatest(x, y, z), "\n")


-------------------------------------
count_vowels <- function(text) {
    text <- tolower(text)
    vowels <- strsplit(text, "")[[1]]
    count <- sum(vowels %in% c("a", "e", "i", "o", "u"))
    return(count)
  }

# User input
str <- readline("Enter a string: ")
cat("Number of vowels:", count_vowels(str), "\n")
