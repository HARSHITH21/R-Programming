#1
# Install and load the UsingR package
install.packages("UsingR")
library(UsingR)

# Create a table of the state variable
state_table <- table(npdb$state)

# Sort the table in descending order to find the state with the most awards
sorted_state_table <- sort(state_table, decreasing = TRUE)

# Display the sorted table
sorted_state_table
# CA   FL   TX   NY   OH   PA   MI   KY   WA   AZ   GA   IL   CO   MO   TN   VA   NJ   NC   OK   LA 
#1566  744  442  353  252  196  179  171  160  153  148  135  123  120  120  110  108  106  100   99 
# MD   IA   OR   MS   MN   KS   MA   SC   UT   AR   WV   NM   IN   NV   NE   PR   WI   CT   AL   MT 
# 90   87   80   79   76   75   68   65   64   56   55   50   48   47   46   44   43   41   39   37 
# ND   WY   HI   ID   RI   ME   NH   SD   VT   AK   DC   DE   AS   GU 
# 30   26   23   23   18   17   17   17   14   13   11   11    1    1 

# Extract the state with the most awards
most_awards_state <- names(sorted_state_table)[1]
most_awards_count <- sorted_state_table[1]

# Print the state with the most awards
cat("State with the most awards:", most_awards_state, "\n")

#State with the most awards: CA

cat("Number of awards in the most awarded state:", most_awards_count, "\n")

#Number of awards in the most awarded state: 1566Number of awards in the most awarded state: 1566



#2
# Load the UsingR package
library(UsingR)

# Assuming MLBattend dataset is already loaded into your R environment

# Attach the dataset
attach(MLBattend)

# Extract wins for the New York Yankees
yanks_wins <- wins[franchise == "NYA"]

# Detach the dataset
detach(MLBattend)

# Add the corresponding years as names to the wins vector
years <- 1969:2000
names(yanks_wins) <- years

# Create a barplot
barplot(yanks_wins, main = "New York Yankees Wins (1969-2000)", xlab = "Year", ylab = "Wins", col = "blue")

# Create a dot chart
plot(years, yanks_wins, type = "o", main = "New York Yankees Wins (1969-2000)", xlab = "Year", ylab = "Wins", col = "red")

# Add grid lines
grid()

# Add a legend
legend("topright", legend = c("Wins"), col = c("red"), lty = 1, cex = 0.8)


#3
# Load the UsingR package
library(UsingR)

# Assuming npdb dataset is already loaded into your R environment

# Calculate the mean award amount
mean_amount <- mean(npdb$amount)

# Calculate the median award amount
median_amount <- median(npdb$amount)

# Print the mean and median award amounts
cat("Mean award amount:", mean_amount, "\n")
cat("Median award amount:", median_amount, "\n")
# > cat("Mean award amount:", mean_amount, "\n")
# Mean award amount: 166257.2 
# > cat("Median award amount:", median_amount, "\n")
# Median award amount: 37500

#4
# Load the necessary packages
library(UsingR)

# Load the datasets
data(bumpers)
data(firstchi)
data(math)

# Create histograms
par(mfrow = c(3, 1))  # Arrange plots in 3 rows and 1 column
hist(bumpers, main = "Histogram of bumpers dataset", xlab = "Value", col = "lightblue")
hist(firstchi, main = "Histogram of firstchi dataset", xlab = "Value", col = "lightgreen")
hist(math, main = "Histogram of math dataset", xlab = "Value", col = "lightpink")

# Predicting mean, median, and standard deviation
# Bumpers dataset
bumpers_mean <- mean(bumpers)
bumpers_median <- median(bumpers)
bumpers_sd <- sd(bumpers)

# Firstchi dataset
firstchi_mean <- mean(firstchi)
firstchi_median <- median(firstchi)
firstchi_sd <- sd(firstchi)

# Math dataset
math_mean <- mean(math)
math_median <- median(math)
math_sd <- sd(math)

# Print predictions
cat("Predictions for bumpers dataset:\n")
cat("Mean:", bumpers_mean, "Median:", bumpers_median, "Standard Deviation:", bumpers_sd, "\n")

cat("Predictions for firstchi dataset:\n")
cat("Mean:", firstchi_mean, "Median:", firstchi_median, "Standard Deviation:", firstchi_sd, "\n")

cat("Predictions for math dataset:\n")
cat("Mean:", math_mean, "Median:", math_median, "Standard Deviation:", math_sd, "\n")

# cat("Predictions for bumpers dataset:\n")
# Predictions for bumpers dataset:
# cat("Mean:", bumpers_mean, "Median:", bumpers_median, "Standard Deviation:", bumpers_sd, "\n")
# Mean: 2122.478 Median: 2129 Standard Deviation: 798.4574 
#  
# cat("Predictions for firstchi dataset:\n")
# Predictions for firstchi dataset:
# cat("Mean:", firstchi_mean, "Median:", firstchi_median, "Standard Deviation:", firstchi_sd, "\n")
# Mean: 23.97701 Median: 23 Standard Deviation: 6.254258 
#  
# cat("Predictions for math dataset:\n")
# Predictions for math dataset:
# cat("Mean:", math_mean, "Median:", math_median, "Standard Deviation:", math_sd, "\n")
# Mean: 54.9 Median: 54 Standard Deviation: 9.746264 

#5
# Load the necessary package
library(MASS)

# Load the DDT dataset
data(DDT)

# Create a histogram
hist(DDT, main = "Histogram of DDT on Kale", xlab = "DDT Measurement", col = "lightblue")

# Create a boxplot
boxplot(DDT, main = "Boxplot of DDT on Kale", ylab = "DDT Measurement", col = "lightgreen")

# Estimate mean and standard deviation from the plots
# For mean, it can be roughly estimated from the center of the histogram
# For standard deviation, it can be estimated from the spread of the data in the histogram and boxplot

# Check the estimates with appropriate functions
estimated_mean <- mean(DDT)
estimated_sd <- sd(DDT)

# Print the estimates
cat("Estimated mean:", estimated_mean, "\n")
cat("Estimated standard deviation:", estimated_sd, "\n")

# Estimated mean: 3.328 
# Estimated standard deviation: 0.4371531 

#6
# Load the necessary datasets
data(state.area)
data(state.abb)

# Assign state abbreviations as names to the state.area variable
names(state.area) <- state.abb

# Find the percentage of states with area less than New Jersey (NJ)
percent_less_than_NJ <- mean(state.area < state.area["NJ"]) * 100

# Find the percentage of states with area less than New York (NY)
percent_less_than_NY <- mean(state.area < state.area["NY"]) * 100

# Print the percentages
cat("Percentage of states with area less than New Jersey (NJ):", percent_less_than_NJ, "%\n")
cat("Percentage of states with area less than New York (NY):", percent_less_than_NY, "%\n")

# Create a histogram of all the state areas
hist(state.area, main = "Histogram of State Areas", xlab = "Area", ylab = "Frequency", col = "lightblue")

# Identify the outlier
outlier_state <- names(state.area[state.area == max(state.area)])
cat("The outlier state with the largest area is:", outlier_state, "\n")
# Percentage of states with area less than New Jersey (NJ): 8 %
# Percentage of states with area less than New York (NY): 40 %
# The outlier state with the largest area is: AK 