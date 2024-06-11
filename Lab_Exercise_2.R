
#1

# Load necessary library
library(readr)

# Read in train.csv
train <- read_csv("C:/Users/harsh/OneDrive/Desktop/R Programing/files/train.csv")

# Check dimensions of train.csv
cat("Dimensions of train.csv:", nrow(train), "rows and", ncol(train), "columns\n")

# Convert tibble to data frame
train_df <- as.data.frame(train)

# Show the bottom right element of train.csv
bottom_right <- train_df[nrow(train_df), ncol(train_df)]
cat("Bottom right element of train.csv:", bottom_right, "\n")

#Dimensions of train.csv: 992931 rows and 2 columns
#Bottom right element of train.csv: 0 

library(readr)

# Read in members.csv
file1 <- read.csv("C:/Users/harsh/OneDrive/Desktop/R Programing/files/members_v3.csv")

# Check dimensions of members.csv
cat("Dimensions of Member.csv:", nrow(file1), "rows and", ncol(file1), "columns\n")

# Convert tibble to data frame
file_df <- as.data.frame(file1)

# Show the bottom right element of train.csv
bottom_right <- file_df[nrow(file_df), ncol(file_df)]
cat("Bottom right element of Member.csv:", bottom_right, "\n")

#Dimensions of Member.csv: 6769473 rows and 6 columns
#Bottom right element of Member.csv: 20151021

library(readr)

# Read in transactions.csv
file2 <- read_csv("C:/Users/harsh/OneDrive/Desktop/R Programing/files/transactions.csv")

# Check dimensions of transactions.csv
cat("Dimensions of transactions.csv:", nrow(file2), "rows and", ncol(file2), "columns\n")

# Convert tibble to data frame
file_df <- as.data.frame(file2)

# Show the bottom right element of train.csv
bottom_right <- file_df[nrow(file_df), ncol(file_df)]
cat("Bottom right element of transactions.csv:", bottom_right, "\n")

#Dimensions of transactions.csv: 21547746 rows and 9 columns
#Bottom right element of transactions.csv: 1

#2
# Load necessary library
library(readr)

# Read in train.csv
train <- read_csv("train.csv")

# Output odd numbers of columns
odd_columns <- train[, seq(1, ncol(train), by = 2)]
cat("Odd number of columns:\n")

# Output even numbers of rows
even_rows <- train[seq(2, nrow(train), by = 2), ]
cat("Even number of rows:\n")
m <- train[even_rows,odd_columns]
tail(m)

train[seq(2,nrow(train),2),seq(1,ncol(train),2)]

## A tibble: 496,465 × 1
#msno                                        
#<chr>                                       
  #1 QA7uiXy8vIbUSPOkCf9RwQ3FsT8jVq2OxDr8zqa7bRQ=
  #2 mT5V8rEpa+8wuqi6x0DoVd3H5icMKkE9Prt49UlmK+4=
  #3 GBy8qSz16X5iYWD+3CMxv/Hm6OPSrXBYtmbnlRtknW0=
  #4 T0FF6lumjKcqEO0O+tUH2ytc+Kb9EkeaLzcVUiTr1aE=
  #5 MkuWz0Nq6/Oq5fKqRddWL7oh2SLUSRe3/g+XmAWqW1Q=
  #6 0Ip2rzeoa44alqEw3daokOIJ5pRlKsuvSXpFiVfz6/U=
  #7 wEUOkYvyz3xTOx2p9z2Xcs4OzYsH/ZrNFUKZ+KFPf0M=
  #8 QS3ob4zLlWcWzBIlbsd6lQIA3nJusPs6rNDVSEpQO2k=
  #9 d7QVMhAzjj4yc1Ojjbf2SFJam90RaUcwNDe3NxHVluA=
  #10 TZxhkfZ9NwxqnUrNsMgMDj4SZi+p0Zv/oK9UsH5uqnc=
  # ℹ 496,455 more rows
  # ℹ Use `print(n = ...)` to see more rows

#3
# Assume you have an object named "train" that you want to save
# Save using dput
dput(file1, file = "transactions1.R")

# Load using dget
dget("transactions.R")

#1   waLDQMmcOu2jLDaV1ddDkgCrB/jl6sD66Xzs0Vqax1Y=        1
#2   QA7uiXy8vIbUSPOkCf9RwQ3FsT8jVq2OxDr8zqa7bRQ=        1
#3   fGwBva6hikQmTJzrbz/2Ezjm5Cth5jZUNvXigKK2AFA=        1
#4   mT5V8rEpa+8wuqi6x0DoVd3H5icMKkE9Prt49UlmK+4=        1
#5   XaPhtGLk/5UvvOYHcONTwsnH97P4eGECeq+BARGItRw=        1
#6   GBy8qSz16X5iYWD+3CMxv/Hm6OPSrXBYtmbnlRtknW0=        1
#7   lYLh7TdkWpIoQs3i3o6mIjLH8/IEgMWP9r7OpsLX0Vo=        1
#8   T0FF6lumjKcqEO0O+tUH2ytc+Kb9EkeaLzcVUiTr1aE=        1
#9   Nb1ZGEmagQeba5E+nQj8VlQoWl+8SFmLZu+Y8ytIamw=        1
#10  MkuWz0Nq6/Oq5fKqRddWL7oh2SLUSRe3/g+XmAWqW1Q=        1
#to
#500 Q5vEijUk5Xy7CX5ZGr5SRcFYKkLdQbobNapq21lt7qc=        1
#[ reached 'max' / getOption("max.print") -- omitted 992431 rows ]


# Assume you have multiple objects you want to save
# Save using dump
dump(c("train"), file = "data_dump.R")

# Load using source
source("data_dump.R")

# Save objects into a .RData file
save(train, file = "data.RData")

# Load objects from the .RData file
load("data.RData")

# Save the entire workspace
save.image("workspace.RData")

# Load the entire workspace
load("workspace.RData")

#dump(c("train"), file = "data_dump.R")
#source("data_dump.R")
#save(train, file = "data.RData")
#load("data.RData")
#save.image("workspace.RData")
#load("workspace.RData")

#4
install.packages("readr")
library(readr)

# Read CSV file
train <- read_csv("C:/Users/harsh/OneDrive/Desktop/R Programing/files/train.csv")
system.time(train)
#Rows: 992931 Columns: 2                                                                                                           
#── Column specification ───────────────────────────────────────────────────────────────────────
#Delimiter: ","
#chr (1): msno
#dbl (1): is_churn
#> system.time(train)
#user  system elapsed 
#0       0       0