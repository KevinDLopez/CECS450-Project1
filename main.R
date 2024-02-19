library("ggplot2")
library(readxl)
TravelInsurancePrediction <- read_excel("C:/Users/gigi/Desktop/CSULB/24_Spring/DV_450/01_Project/Practice/TravelInsurancePrediction.xlsx")
View(TravelInsurancePrediction)
# Display the first few rows of the data
head(TravelInsurancePrediction)

# Summary statistics of the data
summary(TravelInsurancePrediction)

# Create a grouped bar chart
frequentFlyerStatus <- c("Yes" = "red", "No" = "blue")
bar_chart <- ggplot(data = TravelInsurancePrediction, aes(x = Age, fill = FrequentFlyer)) +
  geom_bar(position = "dodge") +
  scale_fill_manual(values = frequentFlyerStatus) +
  labs(title = "Distribution of Frequent Flyer Status by Age", x = "Age", y = "Count")

# Display the bar chart
print(bar_chart)

#Reference: 
#https://www.statmethods.net/graphs/histograms-and-density.html

employmentTypeLines <- c("Private Sector/Self-Employed" = "blue", "Goverment Sector" = "red" )
densityplot <- ggplot(data = TravelInsurancePrediction, aes(x = Age, y = as.factor(AnnualIncome), fill = `Employment Type`)) +
  geom_density(alpha = 0.1) +
  scale_fill_manual(values = employmentTypeLines) +
  labs(title = "Income, Occupation, and Age", x = "Age", y = "AnnualIncome")
print(densityplot)



densityplot2 <- ggplot(TravelInsurancePrediction, aes(x = Age, y = AnnualIncome, fill = `Employment Type`)) +
  geom_density_2d(color = 'red', h = 10) +  # Adjust the bandwidth as needed
  labs(title = "Income, Occupation, and Age", x = "Age", y = "AnnualIncome")

print(densityplot2)

