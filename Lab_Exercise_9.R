# Load required libraries
library(randomForest)
library(glmnet)
library(e1071)
library(dplyr)

# Load the dataset
dataset <- read.csv("C:\\Users\\harsh\\OneDrive\\Desktop\\R Programing\\Lab9_Train.csv")

# Select relevant features and target variable
features <- select(dataset, amt, gender, zip)
target <- dataset$is_fraud

# Check dimensions of the feature matrix
dim_features <- dim(features)
train_indices <- 1:1200000

# Transform 'gender' to binary values (0 for 'M', 1 for 'F')
features$gender <- ifelse(features$gender == 'M', 0, 1)

# Filter features based on standard deviation
filtered_features <- features[, apply(features, 2, sd) > 0]

# Prepare training and testing data
train_x <- as.matrix(filtered_features[train_indices,])
train_y <- as.factor(target[train_indices])
test_x <- as.matrix(filtered_features[-train_indices,])
test_y <- as.factor(target[-train_indices])

trainn_x <- as.matrix(filtered_features[train_indices,])
trainn_y <- as.factor(target[train_indices])
testn_x <- as.matrix(filtered_features[-train_indices,])
testn_y <- as.factor(target[-train_indices])

#Q1
# Train Random Forest model
library(randomForest)
library(ROCR)

rf_model <- randomForest(x = train_x, y = train_y, ntree = 50)

# Predict on training data
train_pred_prob <- predict(rf_model, train_x, type = "prob")[, 1]
train_auc <- performance(prediction(train_pred_prob, train_y), "auc")@y.values[[1]]

# Predict on testing data
test_pred_prob <- predict(rf_model, test_x, type = "prob")[, 1]
test_auc <- performance(prediction(test_pred_prob, test_y), "auc")@y.values[[1]]

# Report AUC scores
print(paste("Training AUC:", train_auc))
print(paste("Testing AUC:", test_auc))
#Ans

# ntree=100
#[1] "Training AUC: 0.156745075323952"
#[1] "Testing AUC: 0.256020350943747"

# ntree=200
# [1] "Training AUC: 0.122310420081107"
# [1] "Testing AUC: 0.238907897753588"

# ntree=300
#[1] "Training AUC: 0.10169923865896"
#[1] "Testing AUC: 0.217979453852195"

# ntree=400
# [1] "Training AUC: 0.0834540534595061"
# [1] "Testing AUC: 0.219119086445012"

#Q2
# Train a neural network model
library(neuralnet)
library(pROC)

set.seed(123)  # for reproducibility
nn_model <- neuralnet(trainn_y ~ ., hidden = c(5, 2), linear.output = FALSE, data = cbind(trainn_x, trainn_y))

# Predict on training data
train_pred_prob_nn <- predict(nn_model, trainn_x)[, 1]
train_auc_nn <- auc(roc(trainn_y, train_pred_prob_nn))
print(paste("Training AUC (Neural Network):", train_auc_nn))

#Ans
#[1] "Training AUC (Neural Network): 0.50000167636303"

# Predict on testing data
test_pred_prob_nn <- predict(nn_model, testn_x)[, 1]
test_auc_nn <- auc(roc(testn_y, test_pred_prob_nn))
print(paste("Testing AUC (Neural Network):", test_auc_nn))

#Ans
#[1] "Testing AUC (Neural Network): 0.5"