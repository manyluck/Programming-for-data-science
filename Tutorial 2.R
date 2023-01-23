###Sequences

#1. The integers 1 to 10, with increments of 1.
output1<-1:10
#2. The integers -10 to 10, with increments of 1.
output2<--10:10
#3. The integers -10 to 10, with increments of 2.
output3<-seq(from = -10, to = 10, by = 2)
#4. The integers -20 to 20, with increments of 3.
output4<-seq(from = -20, to = 20, by = 3)
#5. The real numbers 0 to 1, with increments of 0.1.
output5<-seq(from = 0, to = 1, by = 0.1)
#6. The real numbers 1 to -1, with decrements of 0.2.
output6<-seq(from = 1, to = -1, by = -0.1)
#7. The 1 to 256, where each value is double the previous.
output7<-2^seq(from = 0, to = 8, by = 1) #bcus 256 is the sqr of 8
output7 <- 2^(0:8)
#8. The integers 1 to 10, with increments of 1, then 12 to 30 with increments of 2.
output8<-c(seq(from = 0, to = 10, by = 1),seq(from = 12, to = 30, by = 2))

###Plotting Mathematical Functions
x=-10:10 #first set value for x
#1. y = 3x + 9
y<-3*x+9
#2. y = 2x2 + 4x + 1

y<-2*2+4*x+1
#3. y = −x3 + 4x2 + 10x − 7
y <- -x*3 + 4*x^2 + 10*x - 7
#4. y = log(x)
y <- log(abs(x)) #will get error becus log can't find negative value
#5. y = sin(x)
y <- sin(x)
#6. y = cos(x/10)
y <- cos(x/10)
#7. y = sin(x/2)/x
y <- sin(x/2)/x
#8. y = 1+e1−x/5
y <- 1/(1 + exp(-x/5))

#Speed of Light

?morley
morley
head(morley)           
speed <- morley$Speed

#1. Convert the measurements in to km/s values.(conversion =299000)

conversion<-299000

speed_km <- speed+conversion

#2. Provide the histogram of the data.

hist(speed,col=3, main = "Speed of light measurements", xlab = "Speed (km/s)")
#3. Print out the mean and standard deviation of the data.
Mean<-mean(speed_km)
Std<-sd(speed_km)
cat("The mean and standard deviaition of the speed of light measurements are", Mean, "and", Std, "km/s.\n")
#4. Print out the difference between the mean from this experiment to the actual speed of light.
actualSpeed <- 299792.458 # record the speed in km/s
d <- Mean - actualSpeed
cat("The difference between the mean of the measurements and the actual speed of light is", d, " km.s.\n")

###User comparison
#1. Read in a new measurement from the console.

new_speed<- scan(n = 1) # read one value
#2. Compare the measurement to the mean data from the Michelson and Morley experiment (report the difference).
diff<- new_speed-Mean
cat("The difference between the mean of the measurements and the new measurement of the speed of light is", diff)
#3. We want to check if the new measurement is an outlier with respect to the Michelson and Morley experiment data. Print a statement showing the threshold values, 
#which if the new speed is outside of, is an outlier. Use “Tukey’s Fences”4 to determine the 4 https://en.wikipedia.org/wiki/
#outlier thresholds, and let k (from the Tukey’s Fences equation) be Outlier#Tukey’s_fences
#a variable (so it can be set to an appropriate value for the experiment).

## Check if new measurement is an outlier
## The outlier thresholds are Q1 - k*IRQ and Q3 + k*IQR
k <- 1.5 # set k as a parameter.
iqr <- IQR(speed)
boxplot(speed)
q3 <- quantile(speed, probs = 0.75)
q1 <- quantile(speed, probs = 0.25)
lowerThreshold <- q1 - k*iqr
upperThreshold <- q3 + k*iqr
cat("The outlier thresholds are", lowerThreshold, "and", upperThreshold, ".\n")
#same result from running the quantile
quantile(speed)
#the outlier can be found from the boxplot, it's the value above the upper theshold and below the lowerthesold

boxplot(speed)

#New measurements
d <- read.csv("speedLight.csv") # read the CSV file
newSpeed <- d$speed # extract the speed column
head(d)

# Load the original data
speed <- morley$Speed
speed <- speed + 299000 # convert to km/s (see help(morley))
m <- mean(speed)
s <- sd(speed)
# Load our colleagues data
newSpeed <- d$speed # extract the speed column
# After examining the new data, we find that it is measured in m/s.
# Scale to km/s
newSpeed <- newSpeed/1000
# compute mean and standard deviation, ignore missing values
newm <- mean(newSpeed, na.rm = TRUE)
news <- sd(newSpeed, na.rm = TRUE)
cat("The means of the previous and new speed of light data are", m, "and", newm, "km/s.\n")
## difference in means
speedDiff <- m - newm
cat("The difference in means is", speedDiff, "km/s.\n")
## Quartiles
## The first and third quartiles are the 0.25 and 0.75 quantiles.
q1 <- quantile(speed, probs = 0.25)
q3 <- quantile(speed, probs = 0.75)
cat("The first and third quartile of the previous data are", q1, "and", q3, "km/s.\n")
q1new <- quantile(newSpeed, probs = 0.25, na.rm = TRUE)
q3new <- quantile(newSpeed, probs = 0.75, na.rm = TRUE)
cat("The first and third quartile of the new data are", q1new, "and", q3new, "km/s.\n")

###T20 Cricket Scoreboard
#############################
## Runs: 92 ##
## Overs Completed: 12 ##
## Run Rate: 7.67 ##
## Required Run Rate: 7.5 ##
#############################

totalOvers <- 20
oversCompleted <- 12
runs <- 92
target <- 152
runRate <- runs/oversCompleted
requiredRunRate <- (target - runs)/(totalOvers - oversCompleted)
cat("#############################
## Runs: ", format(runs, width = 4), "##
## Overs Completed: ", format(oversCompleted, width = 4), "##
## Run Rate: ", format(round(runRate, 2), width = 4, nsmall = 2), "##
## Required Run Rate:", format(requiredRunRate, width = 4), "##
#############################")