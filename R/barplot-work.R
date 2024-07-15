# method 1
data = read.csv(file = file.choose(),header = T)
View(data)


# method 2
Loan <- read.csv("C:/Users/USER/Desktop/Data analytics/datasets/Loan.csv")
View(Loan)

data2 =read.table(file = file.choose(),header = T,sep=",") # for text file use sep="\t" 
View(data2)





# to plot graph from imported data

# Extract relevant columns
#dollar sign ($) is used to access a specific column from a dataframe
states <- data$State.UTs
death_ratio <- data$Death.Ratio
# Create the bar plot
barplot(death_ratio, names.arg = states, xlab = "States/UTs", ylab = "Death Ratio", main = "Death Ratio by States/UTs", col =c("red","blue","pink") , las = 2, cex.names = 0.7)



# Sample data
data <- data.frame(
  State.UTs = c("Andaman and Nicobar", "Andhra Pradesh", "Arunachal Pradesh", "Assam"),
  Death.Ratio = c(1.20, 0.63, 0.44, 1.08)
)

# Extract relevant columns
states <- data$State.UTs
death_ratio <- data$Death.Ratio

# Custom colors
colors <- c("red", "green", "blue", "purple")

# Create the bar plot
bp <- barplot(death_ratio, names.arg = states, xlab = "States/UTs", ylab = "Death Ratio", main = "Death Ratio by States/UTs",
              col = colors, border = "black", ylim = c(0, 2), density = c(10, 20, 30, 40), angle = c(45, 90, 135, 180),las=2)

# Add data labels
text(x = bp, y = death_ratio, label = death_ratio, pos = 3, cex = 0.8, col = "black")

# Add legend
legend("topright", legend = states, fill = colors, title = "States/UTs")


