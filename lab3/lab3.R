getwd()
setwd("C:\\Users\\dinar\\OneDrive\\Desktop\\lab3") #setting the working directory
getwd()

#import csv files
data<-read.csv("DATA 3.csv")
data

fix(data)

names(data)<-c("Age", "Gender", "Accomodation")
fix(data)

data$Gender<-factor(data$Gender , c(1,2), c("Male", "Female"))
fix(data)

data$Accomodation<-factor(data$Accomodation, c(1,2,3), c("Home","Board","Lodging"))
fix(data)

attach(data)

#Q2
#Frequency table
#we need frq table to create charts
#gender
Gender.freq<-table(Gender)
Gender.freq

Accomodation.freq<-table(Accomodation)
Accomodation.freq

#pie chart
pie(Gender.freq, main = "pie chart for gender")
pie(Accomodation.freq, main = "pie chart for Accomodation")

#bar chart 
barplot(Gender.freq, main="Bar chart for Gender" , ylab= "Frequency")

#x axis
abline(h=0)

#bar chart accomodation
barplot(Accomodation.freq, main="BAr chart for Accomodation", ylab ="Frequency")

#x axis 
abline(h=0)

#boxplot
boxplot(Age, main="Boxplot for Age" , ylab = "Age", outpach = 8)

#Q3 two way freq table 
gender_acc.freq<-table(Gender, Accomodation)
gender_acc.freq





