#Type of variables
#1.numeric
#2. String
#3. data frames 
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame

summary(Data_Frame)

timetable <- data.frame(
  Days= c("Mon",'Tue'),
  Time = c('6PM-9PM','6PM-10PM')
)
#first vector will become first col 

#change row to col>use transpose 
t(timetable)
#4.list

class_list<-list('toon','anina','manav','hemshree','hitesh','sidthart','utkarsh')

#To identify the type of a variable we can use the function class
class(class_list)
class(timetable)

##Scientific notation
#To provide a more readable output, R prints large and small numbers in scientific notation.
print(134*10^10)
#If you prefer R not to print using scientific notation, add options(scipen=999) to the top of yourscript.
options(scipen=999)
print(134*10^10)

#Conversion between Numeric and String
#as.numeric to convert a string to a numeric value.
#as.character to convert a numeric value to a string

as.character(Data_Frame)

#We can also test is a variable is numeric or a string type:
#is.numeric returns TRUE is the variable is numeric.
#is.character returns TRUE is the variable is a string

is.character(Data_Frame)

#R has a few predefined constants that can be used.
LETTERS
letters
pi
month.name
month.abb

birthmonth<- data.frame (
  month=month.abb,
  bday= c('Jhala','Lek','Lina','Toon') #if you don't put same value of variable (12 varibles for 12 months)
  #R will loop the variable
) 
birthmonth


#Functions
#Functions are mechanisms for processing variables

angle <- 4 # angle in degrees
rise <- sin(angle) # call the function sin to compute the sine of angle
print(rise)

?sin

?log
#log(x, base = exp(1))
log(10, base = exp(1))
log(10, base=3)

##Mathematical Functions

#Trigonometric functions: cos(x), sin(x), tan(x),
#Inverse trigonometric functions: acos(x), asin(x), atan(x), atan2(y, x)
#Logarithmic functions: log(x), log10(x), log2(x), exp(x)
#Absolute value and square root: abs(x), sqrt(x)
#Rounding: ceiling(x), floor(x), trunc(x), round(x, digits = 0), signif(x, digits = 6)                                                                        6)
#More mathematical operations: integer division x %/% y, remainder x %% y


?signif

trunc(18,)

( x1 <- seq(-2, 4, by = .5) )
round(x1) #-- IEEE / IEC rounding !
x1[trunc(x1) != floor(x1)]
x1[round(x1) != floor(x1 + .5)]
(non.int <- ceiling(x1) != floor(x1))

trunc(3.14266737)
signif(3.273)

x2 <- pi * 100^(-1:3)
round(x2,3)
signif(x2, 3)

#Combine variable
ages <- c(18, 24, 26, 20, 19, 18, 20, 35)
ages <- c(ages, 41) # append 41 to the set of ages
print(ages)

##Generating Sequences
years <- 2010:2020
print(years)

#or use sequence 

years <- seq(from = 1980, to = 2020, by = 5)
print(years)

##Computing Statistics
#Measures of location: mean, median
#Measures of spread: sd, var, range
#Quantiles: quantiles, Interquartile range: IQR (third quartile - first quartile)
#Multiple statistics: summary

median(ages)
summary(ages)

#Missing value, NA
runningTimes <- c(45.2, 54.7, 34.8, NA, 45.5, 35.9)
mean(runningTimes,na.rm = T) #remove NA value from the function

scan()


#Visualization

##Formatting Output
#Two commonly used formatting functions are:
#paste: return output as a string
#cat: print the output to the screen

s <- sd(runningTimes, na.rm=TRUE)

cat('The standard deviation of the running times is', s) 
print(cat)

text <- paste('The standard deviation of the running times is', s) # store in variable
print(text)


##Plotting
#R provides many functions for plotting data. The most commonly used methods are:


#plot: Scatter plot
years <- 2010:2020
dosAttacks <- c(34, 45, 37, 53, 54, 67, 89, 67, 88, 91, 92)
plot(years, dosAttacks)

plot(years, dosAttacks, xlab = 'Year of Attack', ylab = 'Number of Attacks',
     main = 'Number of DOS Attacks', type = 'b', col = 2)

#barlpot: Bar plot
os <- c('Windows', 'OSX', 'Linux')
dosAttacks <- c(74, 67, 56)
barplot(dosAttacks, names.arg = os, col = 2)

#histogram
lengthDosAttacks <- c(24, 12, 13, 15, 10, 9, 12, 15, 13, 14, 16)
hist(lengthDosAttacks, col = 2)

#boxplot: Box plot
lengthDosAttacks <- c(24, 12, 13, 15, 10, 9, 12, 15, 13, 14, 16)
boxplot(lengthDosAttacks, col = 2, horizontal = TRUE)

###EXAMPLE###
input<- scan(n=5) #need to put input for all 5 variables
Mean<-mean(input,na.rm=T)
Standard<-sd(input,na.rm=T)

s<-paste("The mean is", Mean,";", "The standard deviation is",Standard)

print(s)

hist(input)
barplot(input)
boxplot(input,horizontal = T)
