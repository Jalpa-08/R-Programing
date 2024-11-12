##-- TITANIC DATASET EDA In R --##

# 1. Loading the Necessary Libraries
# Install necessary packages if not already installed
install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyr")
install.packages("corrplot")
install.packages("scales")

# Load libraries
library(dplyr)
library(ggplot2)
library(tidyr)
library(corrplot)
library(scales)

# Function to know the current wd.
getwd()
# Function to reset the current wd.
setwd("D:\\TM\\R Programming\\Program")

# 2. Loading the Dataset
# If the titanic dataset is available as a CSV
titanic_data <- read.csv('D:\JALPA\R-Progamming\EDA_R-Programming\titanic.csv')

# Or load it from the titanic package (optional)
# install.packages("titanic")
# library(titanic)
# titanic_data <- as.data.frame(titanic_train)

# 3. Exploring the Dataset
# Check the structure and summary of the dataset
str(titanic_data)
summary(titanic_data)

# Display first few rows
head(titanic_data)

# 4. Data Cleaning
# a) Checking for Missing Values
colSums(is.na(titanic_data))

# b) Handling Missing Values]
# Fill missing 'Age' with the median
# For simplicity, we'll fill missing Age values with the median, remove rows 
#-with missing Embarked, and treat the Cabin column as having a high percentage of missing data.

titanic_data$Age[is.na(titanic_data$Age)] <- median(titanic_data$Age, na.rm = TRUE)

# Drop rows with missing 'Embarked'
titanic_data <- titanic_data[!is.na(titanic_data$Embarked), ]

# Drop the 'Cabin' column due to excessive missing data
titanic_data <- titanic_data %>% select(-Cabin)

# c) Converting Variables to Factors
# Convert necessary columns to factors
titanic_data$Survived <- factor(titanic_data$Survived, levels = c(0, 1), labels = c("No", "Yes"))
titanic_data$Pclass <- factor(titanic_data$Pclass)
titanic_data$Sex <- factor(titanic_data$Sex)
titanic_data$Embarked <- factor(titanic_data$Embarked)

# 5. Data Visualization
# a) Distribution of Survival
ggplot(titanic_data, aes(x = Survived)) +
  geom_bar(fill = 'steelblue') +
  ggtitle('Distribution of Survival')

# b) Survival by Gender
ggplot(titanic_data, aes(x = Sex, fill = Survived)) +
  geom_bar(position = 'fill') +
  scale_y_continuous(labels = scales::percent) +
  ggtitle('Survival Rate by Gender') +
  theme_minimal()

# c) Age Distribution of Survivors and Non-Survivors
ggplot(titanic_data, aes(x = Age, fill = Survived)) +
  geom_histogram(binwidth = 5, position = 'identity', alpha = 0.7) +
  ggtitle('Age Distribution by Survival') +
  theme_minimal()

# d) Class and Survival
ggplot(titanic_data, aes(x = Pclass, fill = Survived)) +
  geom_bar(position = 'fill') +
  scale_y_continuous(labels = scales::percent) +
  ggtitle('Survival Rate by Passenger Class') +
  theme_minimal()

# e) Correlation between Numeric Variables
# Select only numeric columns
numeric_vars <- titanic_data %>% select_if(is.numeric)

# Create correlation matrix
corr_matrix <- cor(numeric_vars, use = "complete.obs")

# Plot the correlation matrix
corrplot(corr_matrix, method = 'color', type = 'lower', addCoef.col = 'black', tl.col = 'black', number.cex = 0.7)

# 6. Feature Engineering (Optional)
# You can create additional features that could help with your analysis:
# a) Family Size
# Create a new 'FamilySize' feature
titanic_data$FamilySize <- titanic_data$SibSp + titanic_data$Parch + 1

# Visualize the effect of FamilySize on survival
ggplot(titanic_data, aes(x = FamilySize, fill = Survived)) +
  geom_bar(position = 'fill') +
  scale_y_continuous(labels = scales::percent) +
  ggtitle('Survival Rate by Family Size') +
  theme_minimal()

# b) Age Groups
# Create age groups
titanic_data$AgeGroup <- cut(titanic_data$Age, breaks = c(0, 12, 18, 30, 50, 80), 
                             labels = c('Child', 'Teen', 'Young Adult', 'Adult', 'Senior'))

# Visualize survival by age group
ggplot(titanic_data, aes(x = AgeGroup, fill = Survived)) +
  geom_bar(position = 'fill') +
  scale_y_continuous(labels = scales::percent) +
  ggtitle('Survival Rate by Age Group') +
  theme_minimal()

# 7. Conclusion
#After performing EDA, here are some observations:
  
#- Females had a higher survival rate compared to males.
#- Passengers in higher classes (1st class) had better survival chances.
#- Age played a role, with younger passengers, particularly children, having a higher survival rate.
#- Family size influenced survival; smaller family sizes (1-3) were associated with better survival rates.
