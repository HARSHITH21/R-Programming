#Lab Excercise 1

#1.1

#1)
1+2*(3+4)
#[1] 15

#2)
4**3+(3**(2+1))
#[1] 91

#3)
sqrt((4+3)*(2+1))
#[1] 4.582576

#4)
((1+2)/(3+4))^2
#[1] 0.1836735

#1.2

#1)
(2+3)-4

#2)
2+(3*4)
#[1] 14

#3)
(2/3)/4
#[1] 0.1666667

#4)
2^(3^4)
#[1] 2.417852e+24

#1.3

(1+2*(3^4))/((5/6)-7)
#[1] -26.43243

#1.4

(0.25-0.2)/(sqrt(0.2*(1-0.2)/100))
#[1] 1.25

#1.5

a<-2
b<-3
c<-4
d<-5
a*b*c*d
#[1] 120

#1.6

data(rivers)
print(rivers)

#[1]  735  320  325  392  524  450 1459  135  465  600  330  336  280  315  870  906  202  329
#[19]  290 1000  600  505 1450  840 1243  890  350  407  286  280  525  720  390  250  327  230
#[37]  265  850  210  630  260  230  360  730  600  306  390  420  291  710  340  217  281  352
#[55]  259  250  470  680  570  350  300  560  900  625  332 2348 1171 3710 2315 2533  780  280
#[73]  410  460  260  255  431  350  760  618  338  981 1306  500  696  605  250  411 1054  735
#[91]  233  435  490  310  460  383  375 1270  545  445 1885  380  300  380  377  425  276  210
#[109]  800  420  350  360  538 1100 1205  314  237  610  360  540 1038  424  310  300  444  301
#[127]  268  620  215  652  900  525  246  360  529  500  720  270  430  671 1770
tail(rivers, 1)
#[1] 1770

#1.7

library(UsingR)
data(exec.pay)
head(exec.pay)
#[1] 136  74   8  38  46  43
max_value <- max(exec.pay)
print(max_value)
#[1] 2510

#1.8
mean_value <- mean(exec.pay)
min_value <- min(exec.pay)
max_value <- max(exec.pay)

print(mean_value)
#[1] 59.88945
print(min_value)
#[1] 0
print(max_value)
#[1] 2510

#1.9
mean_value_without_trim <- mean(exec.pay)
print(mean_value_without_trim)
#[1] 59.88945

mean_value_with_trim <- mean(exec.pay, trim = 0.10)
print(mean_value_with_trim)
#[1] 29.96894

difference <- abs(mean_value_without_trim - mean_value_with_trim)
print(difference)
#[1] 29.9205

#1.10

data(Orange)

names(Orange)
#[1] "Tree"          "age"           "circumference"

#1.11

data("Orange")
average_age <- mean(Orange$age)
print(average_age)
#[1] 922.1429

#1.12

data("Orange")
Max_circumference<-max(Orange$circumference)
print(Max_circumference)

#[1] 214

#3

#2.1
p<-c(2,3,5,7,9,11,13,17,19)
length(p)
#[1] 9

#2.2

gas <- c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)

differences <- diff(gas)

differences
#[1] 313 284 311 280 322 324 302
mean(gas)
#[1] 66371.75
mean(diff(gas))
#[1] 305.1429

#2.3

# 1. Enter the data into a data vector x
x <- c(2, 5, 4, 10, 8)

# 2. Find the square of each number
squared_numbers <- x^2
print(squared_numbers)
#[1]   4  25  16 100  64

# 3. Subtract 6 from each number
subtracted_six <- x - 6
print(subtracted_six)
#[1] -4 -1 -2  4  2

# Subtract 9 from each number and then square the answers
squared_subtracted_nine <- (x - 9)^2
print(squared_subtracted_nine)
#[1] 49 16 25  1  1

#2.4

sequence_a <- rep("a", 5)
print(sequence_a)
#[1] "a" "a" "a" "a" "a"

sequence_odd <- seq(1, 99, by = 2)
print(sequence_odd)
#[1]  1  3  5  7  9 11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 41 43 45 47 49 51 53 55 57 59
#[31] 61 63 65 67 69 71 73 75 77 79 81 83 85 87 89 91 93 95 97 99

sequence_repeat <- rep(1:3, each = 3)
print(sequence_repeat)
#[1] 1 1 1 2 2 2 3 3 3

sequence_custom <- rep(seq(1, 3), times = c(3, 2, 1))
print(sequence_custom)
#[1] 1 1 1 2 2 3

sequence_zigzag <- c(1:5, 4:1)
print(sequence_zigzag)
#[1] 1 2 3 4 5 4 3 2 1
