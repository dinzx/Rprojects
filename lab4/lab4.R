setwd("C:\\Users\\dinar\\OneDrive\\Desktop\\lab4")

getwd()
#import data set 
data<-read.table("DATA 4.txt", header=TRUE, sep="")
data
fix(data)

#rename the column
names(data)<-c("Teams","Attendance","Salary","years")
data

attach(data)


#boxplot
boxplot(Attendance,main="boxplot for Attendance", outline=TRUE, xlab="Atttendance", horizontal = TRUE)
boxplot(Salary,main="boxplot for Salary", outline=TRUE, xlab="Salary", horizontal = TRUE)
boxplot(years,main="boxplot for years", outline=TRUE, xlab="years", horizontal = TRUE)

#histogram
hist(Attendance, main="histogram for Attendance", ylab= "frequency")
abline(h=0)
hist(Salary, main="histogram for Salary", ylab= "frequency")
abline(h=0)
hist(years, main="histogram for years", ylab= "frequency")
abline(h=0)

#stem leaf
stem(Attendance)
stem(Salary)
stem(years)

#median
median(Attendance)
median(Salary)
median(years)

#standard deviation
sd(Attendance)
sd(Salary)
sd(years)

#summary of all quantile value
summary(Attendance)

#quantile value
quantile(Attendance)
quantile(Attendance)[2]
quantile(Attendance)[4]

#Inter Quantile Range
IQR(Attendance)
IQR(Salary)
IQR(years)

#q1
#function that accept argument years and give the mode
get.modes<-function(y){
  counts<-table(y)
  names(counts)[counts==max(counts)]
}

get.modes(years)

get.outliers<-function(z){
  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  iqr<-q3-q1
  ub<-q3+1.5*iqr
  lb<-q1-1.5*iqr
  print(paste("upper Bound",ub))
  print(paste("lower Bound",lb))
  print(paste("outliers",paste(sort(z[z<lb|z>ub],collapse=","))))
}

get.outliers(years)
get.outliers(Attendance)
get.outliers(Salary)
