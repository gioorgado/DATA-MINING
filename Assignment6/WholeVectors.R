#Positive Numbers
nums <- c(5, -3, 7, 9)
all(nums > 0)      
any(nums < 0)      

#Even Numbers
nums <- c(2, 4, 5, 8)
all(nums %% 2 == 0)  
any(nums %% 2 == 0)  

#Exam Pass/Fail
scores <- c(75, 82, 60, 95, 40)
all(scores >= 60)
any(scores < 60)

#Temperature Check
temp <- c(32, 35, 29, 40, 38)
all(temp >= 30)
any(temp < 30)
