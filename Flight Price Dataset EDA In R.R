# Flight Price EDA In R
# Install packages if you don't have them
install.packages(c("dplyr", "ggplot2", "lubridate", "stringr", "scales", "tidyverse"))

# Load the libraries
library(dplyr)
library(ggplot2)
library(lubridate)
library(stringr)
library(scales)
library(tidyverse)

# 1: Load and Explore the Dataset
# Load the dataset
flight_data <- read.csv("D:/JALPA/R-Progamming/EDA/flight_price.csv")

# View the first few rows of the dataset
head(flight_data)

# 2: Data Cleaning
# Convert `Date_of_Journey` to Date format
flight_data$Date_of_Journey <- as.Date(flight_data$Date_of_Journey, format = "%d/%m/%Y")

# Extract `day` and `month` from `Date_of_Journey`
flight_data$Journey_day <- day(flight_data$Date_of_Journey)
flight_data$Journey_month <- month(flight_data$Date_of_Journey)

# Convert Duration into Minutes
# Function to convert duration to minutes
convert_duration <- function(duration) {
  hours <- as.numeric(str_extract(duration, "\\d+(?=h)"))
  minutes <- as.numeric(str_extract(duration, "\\d+(?=m)"))
  hours[is.na(hours)] <- 0
  minutes[is.na(minutes)] <- 0
  total_minutes <- hours * 60 + minutes
  return(total_minutes)
}

flight_data$Duration_minutes <- sapply(flight_data$Duration, convert_duration)

# Handle Missing Values
# Check for missing values
sum(is.na(flight_data))

# Fill or drop missing values as appropriate
flight_data <- flight_data %>% drop_na()

# 3: Exploratory Data Analysis
# 1. Airline-wise Price Distribution
ggplot(flight_data, aes(x = Airline, y = Price, fill = Airline)) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Airline-wise Price Distribution", x = "Airline", y = "Price")

# 2.Distribution of Stops
ggplot(flight_data, aes(x = Total_Stops, fill = Total_Stops)) +
  geom_bar() +
  labs(title = "Total Stops Distribution", x = "Total Stops", y = "Count")

# 3.Price Distribution
ggplot(flight_data, aes(x = Price)) +
  geom_histogram(bins = 50, fill = "skyblue", color = "black") +
  labs(title = "Flight Price Distribution", x = "Price", y = "Frequency") +
  scale_x_continuous(labels = dollar)

# Bivariate Analysis
# 1.Price vs Duration
ggplot(flight_data, aes(x = Duration_minutes, y = Price)) +
  geom_point(alpha = 0.5, color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Price vs Duration", x = "Duration (minutes)", y = "Price")

# 2.Price Based on Source and Destination
ggplot(flight_data, aes(x = Source, y = Price, fill = Destination)) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Price Based on Source and Destination", x = "Source", y = "Price")

# Time-based Analysis
# 1.Price Variation by Month and Day
ggplot(flight_data, aes(x = Journey_month, y = Price)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Price Variation by Month", x = "Month", y = "Price")

ggplot(flight_data, aes(x = Journey_day, y = Price)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "Price Variation by Day", x = "Day", y = "Price")

# 4: Summary Statistics
# Summary statistics for numeric variables
summary(flight_data %>% select(Price, Duration_minutes))




