#Traffic Lights
signal <- "red" 
result <- switch(signal,
                 red = "Stop",
                 yellow = "Ready",
                 green = "Go",
                 "Invalid signal")
print(result)

#Grade System
grade <- "A"
meaning <- switch(grade,
                  A = "Excellent",
                  B = "Good",
                  C = "Average",
                  D = "Poor",
                  F = "Fail",
                  "Invalid grade")
print(meaning)

#Math Menu
choice <- 3 
num1 <- 10
num2 <- 5
result <- switch(choice,
                 "1" = num1 + num2,
                 "2" = num1 - num2,
                 "3" = num1 * num2,
                 "4" = num1 / num2,
                 "Invalid choice")
print(result)
