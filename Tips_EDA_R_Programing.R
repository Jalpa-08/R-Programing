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

# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load dataset
tips <- read.csv("C:\\Users\\faculty pc\\Downloads\\tips.csv")

# View the first few rows
head(tips)

# Get the structure of the dataset
str(tips)

# Summary statistics
summary(tips)

# Dimensions of the dataset
dim(tips)


# Check for missing values
sum(is.na(tips))

# Alternatively, visualize missing data using the Amelia package
install.packages("Amelia")
library(Amelia)
missmap(tips)

# Histogram of total bill -- Univariant Analysis
ggplot(tips, aes(x = total_bill)) + 
  geom_histogram(bins = 30, fill = "blue", color = "black") + 
  theme_minimal() +
  ggtitle("Distribution of Total Bill")

# Boxplot of tips
ggplot(tips, aes(y = tip)) + 
  geom_boxplot(fill = "green") + 
  theme_minimal() +
  ggtitle("Boxplot of Tips")

# Bar plot of categorical variables Category Analysis
ggplot(tips, aes(x = sex)) + 
  geom_bar(fill = "purple") + 
  ggtitle("Count of Gender") + 
  theme_minimal()

ggplot(tips, aes(x = day)) + 
  geom_bar(fill = "orange") + 
  ggtitle("Count of Days") + 
  theme_minimal()



# Scatter plot between total bill and tip
ggplot(tips, aes(x = total_bill, y = tip)) + 
  geom_point(color = "red") + 
  theme_minimal() +
  ggtitle("Total Bill vs Tip")

# Correlation matrix
cor_matrix <- cor(tips[, sapply(tips, is.numeric)])
print(cor_matrix)

# Scatter plot with color based on gender -- Multivariant Analysis
ggplot(tips, aes(x = total_bill, y = tip, color = sex)) + 
  geom_point() + 
  theme_minimal() + 
  ggtitle("Total Bill vs Tip Colored by Gender")

# Faceted scatter plot based on time (Lunch/Dinner) -- Statistical Summary
ggplot(tips, aes(x = total_bill, y = tip)) + 
  geom_point() + 
  facet_wrap(~ time) + 
  theme_minimal() + 
  ggtitle("Total Bill vs Tip by Time")

# Mean tip by gender
tips %>%
  group_by(sex) %>%
  summarise(mean_tip = mean(tip, na.rm = TRUE))

# Median total bill by day
tips %>%
  group_by(day) %>%
  summarise(median_total_bill = median(total_bill, na.rm = TRUE))

## Finally, interpret the plots and summaries to extract insights. Some typical 
## questions:
  
##  Do men or women tip more on average?
## Is there a relationship between the size of the bill and the tip?
## Which day has the highest total bills or tips?
## By the end of the EDA process, you should have a good understanding of the 
## patterns and relationships in the dataset, ready to inform further modeling or decision-making. 


