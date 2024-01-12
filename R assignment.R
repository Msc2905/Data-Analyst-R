#Q1) Try to write a code for printing sequence of numbers from 1 to 50 with the differences of 3, 5, 10 
A=seq(1,50)
A
#For differences 3
A1=seq(1, 50, by = 3)
A1
#For differences 5
A3=seq(1,50, by = 5)
A3
#For differences 10
A3=seq(1,50, by =10)
A3
#
#Q2)What are the different data objects in R? and write syntax and example for each and every object
#There are 6 basic types of objects in the R language: 
#1.Vectors
#Atomic vectors are one of the basic types of objects in R programming. Atomic vectors can store homogeneous data types such as character, doubles, integers, raw, logical, and complex. A single element variable is also said to be vector.
# Create vectors
x=c(1, 2, 3, 4)
x
# Print vector and class of vector
class(x)

#2. List
#List is another type of object in R programming. List can contain heterogeneous data types such as vectors or another lists.

# Create list
ls=list(c(1, 2, 3, 4), list("a", "b", "c"))

# Print
ls
class(ls)

#3. Matrices
#To store values as 2-Dimensional array, matrices are used in R. Data, number of rows and columns are defined in the matrix() function.
#Syntax:  
matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
x=c(1, 2, 3, 4, 5, 6)

# Create matrix
mat=matrix(x, nrow = 2)

mat
class(mat)

#4. Factors
#Factor object encodes a vector of unique elements (levels) from the given data vector.

# Create vector
s=c("spring", "autumn", "winter", "summer","spring", "autumn")
s
factor(s)
nlevels(factor(s))

#5. Arrays
#array() function is used to create n-dimensional array. This function takes dim attribute as an argument and creates required length of each dimension as specified in the attribute.
#Syntax:
#array(data, dim = length(data), dimnames = NULL)
  
  # Create 3-dimensional array
  # and filling values by column
  arr=array(c(1, 2, 3), dim = c(3, 3, 3))
  arr
  
#6. Data Frames
 # Data frames are 2-dimensional tabular data object in R programming. Data frames consists of multiple columns and each column represents a vector. Columns in data frame can have different modes of data unlike matrices.

  # Create vectors
  x=1:5
  y=LETTERS[1:5]
  z=c("Albert", "Bob", "Charlie", "Denver", "Elie")
  
  # Create data frame of vectors
  df=data.frame(x, y, z)
  
  # Print data frame
 df
#_________________________________*************_______________________________
#Q3)Create Data frame with 3 columns and 5 rows and write a code to fetch and delete row and a column using index and add new column and row to the existed data frame
a=c(1,2,3,4,5)
  b=c('book', 'pen', 'textbook', 'pencil_case', 'notbook')
  c=c(100,65,56,47,80)
  df1=data.frame(a,b,c)
  df1
  df1[3,2]
  df1=df1[-2,-3]
  df1
  df1$d = c("new","new", "old", "old")
  df1
#_________________________________*************_______________________________

#Q4)Write nested if else statements to print whether the given number is negative, positive or Zero 
no=7
  if (no < 0) {
    print(" Number is negative !")
  } else if (no == 0) {
    print(" Number is Zero !")
  } else
    print("Number is positive ! ")
no

#_________________________________*************_______________________________

#Q5)write a program to input any value and check whether it is character, numeric or special character

test1 = readline(prompt=" Enter anything : ")
    if ( is.character(test1)){
    print("Input is character")
  }else if ( is.numeric(test1)){
    print("Input is numeric")
  }
 
#_________________________________*************_______________________________

#Q6)write difference between break and next also write examples for both 
#The basic Function of Break and Next statement is to alter the running loop in the program and flow the control outside of the loop.
#Sometimes there will be such a condition where we need to terminate the loop to continue with the rest of the program. In such cases R Break statement is used.  
#Sometimes there will be such condition where we don’t want loop to perform the program for specific condition inside the loop. In such cases, R next statement is used.
  
 no=1:10
  
  for (val in no)
  {
    if (val == 5) 
    {
      print(paste("Coming out from for loop Where i = ", val))
      break
    }
    print(paste("Values are: ", val))
  }
 
 
 # R Next Statement Example
 
 no=1:10
 
 for (val in no)
 {
   if (val == 6)
   {
     print(paste("Skipping for loop Where i = ", val))
     next
   }
   print(paste("Values are: ", val))
 }
#_________________________________*************_______________________________

#Q7)write a program to print a given vector in reverse format  

#x= c(1,5.6,3,10,3.5,5)

x= c(1,5.6,3,10,3.5,5)
revx = rev(x)
print(revx)

#_________________________________*************_______________________________
 

#Q8)write a program to get the mode value of the given vector (‘a’,’b’,’c’,’t’,’a’,’c’,’r’,’a’,’c’,’t’,’z’,’r’,’v’,’t’,’u’,’e’,’t’)
FindMode <- function(x) {
  u=unique(x)
  u[which.max(tabulate(match(x, u)))]
}

abc = c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")
df3=data.frame(abc)
apply(df3, 2, FindMode)
#_________________________________*************_______________________________

#Q9)Write a function to filter only data belongs to ‘setosa’ in species of Iris dataset.( using dplyr package) 
data("iris")
View(iris)
iris_setosa <- iris %>% filter(Species == "setosa")
head(iris_setosa)
#_________________________________*************_______________________________

#Q10)Create a new column for iris dataset with the name of Means_of_obs, which contains mean value of each row.( using dplyr package)
iris%>%rowwise()%>%mutate(Mean=mean(c(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)))

#_________________________________*************_______________________________

#Q11)Filter data for the “versicolor” and get only ‘sepel_length’ and Sepel _width’ columns.( using dplyr package)
versicolor=iris %>% filter(Species == "versicolor")
versicolor=versicolor %>% select(Sepal.Length, Sepal.Width)

head(versicolor)
#_________________________________*************_______________________________

#Q12)create below plots for the mtcars also write your inferences for each and every plot (use ggplot package) Use Different ( Size , Colour )

data("mtcars")
head(mtcars)
#scatter plot
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()
ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point(size=2, color= 'red', shape=23)
#inference : as the weight increases mpg decreases

#boxplot
ggplot(mtcars, aes(x=as.factor(cyl), y=mpg)) + 
  geom_boxplot(fill= c("orange", "red", "blue"), alpha=0.2) + 
  xlab("cyl")

#inference there are outliers for 8cyl cars and as number of cylinder increases mpg decrases

#histogrm
ggplot(mtcars,aes(x=mpg)) + geom_histogram(binwidth=5,color="black", fill="orange" )+  xlab('Miles per Gallon')+ylab('Number of Cars')
 
#inferece it is slightly positive skewed

#lineplot
ggplot(mtcars, aes(x=wt, y=mpg))+geom_line()
#as weight increases mpg decreases

#bar plot

p=ggplot(data=mtcars, aes(x=gear, y=mpg, fill=gear)) +
  geom_bar(stat="identity")+theme_minimal()
p
#_________________________________******END******_______________________________
