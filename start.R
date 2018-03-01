# My first programm in R language
myString <-"Hello Neymar !"

print(myString)

v<- TRUE
print(class(v))

v<- 25
print(class(v))

v<- 2L
print(class(v))

v<-3+2i
print(class(v))

v<-"Neymar"
print(class(v))

v<-charToRaw("Neymar")
print(class(v))

# Creation d'un vecteur
PSG <-c("Neymar","Pastore","Di Maria")
print(PSG)

# Obtenir la classe du vecteur
print(class(PSG))

# Creation d'une liste
list1<- list(c(2,3,5),32.1,sin)
print(list1)

# Creation d'une matrice
M = matrix(c('a','a','b','c','b','a'), nrow= 2, ncol=3, byrow = TRUE)
print(M)

# Creation d'un array. Alors que matrice limitée à deux dimensions, les arrays peuvent avoir n'importe qu'elle dimension
a<-array(c("green","yellow"), dim=c(3,3))
print(a)

#Factors
#Creation d'un vecteur
resultatsPSG <-c("V","V","N","D","V")

#Creation d'un objet Factor
factor_PSG<- factor(resultatsPSG)

#Print du factor
print(factor_PSG)
print(nlevels(factor_PSG))

#Creation d'une data frame
BMI<- data.frame(
gender = c("Male","Male","Female"),
height = c(152, 171.5, 165), 
weight = c(81,93, 78),
Age = c(42,38,26)
)
print(BMI)

# Affectation avec le signe = 
var1 = c(0,1,2,3)

#Affectation (gauche)
var2<- c("learn","R")

#Affectation (droite)
c(TRUE,1)->var3

print(var1)
cat ("var1 is ", var1 ,"\n")
cat ("var2 is ", var2 ,"\n")
cat ("var3 is ", var3 ,"\n")

# R est un language typé dynamique, la preuve ici
var_x<- "Hello"
cat(" La classe de var_x est",class(var_x),"\n")

var_x<- 34.5
cat(" La classe de var_x est",class(var_x),"\n")

var_x<- 27L
cat(" La classe de var_x est",class(var_x),"\n")

#In-built functions
# Creation d'une sequence de nombres
print(seq(32,44))
print(mean(25:82))
print(sum(1:10))

#User-defined function 
#fonction qui donne le carré d'une séquence de nombres
carre<- function(){
for(i in 1:5){
print(i*i)
}
}
#Appel de la fonction
carre()
# Fonction avec arguments
farg<- function (a,b,c){
result<- a+b+c
print(result)
}

#function with default argument
# Create a function with arguments.
new.function <- function(a = 3, b = 6) {
   result <- a * b
   print(result)
}

# Call the function without giving any argument.
new.function()

# Call the function with giving new values of the argument.
new.function(9,5)

#Strings
a <- 'Start and end with single quote'
print(a)
b <- "Start and end with double quotes"
print(b)
c <- "single quote ' in between double quotes"
print(c)
d <- 'Double quotes " in between single quote'
print(d)

a <- "Hello"
b <- 'How'
c <- "are you? "

print(paste(a,b,c))

# Accès aux éléments d'un vecteur
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
u <- t[c(2,3,6)]
print(u)

# Tri des éléments d'un vecteur
v <- c(3,8,4,5,0,11, -9, 304)

# Sort the elements of the vector.
sort.result <- sort(v)
print(sort.result)

# Sort the elements in the reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

# Sorting character vectors.
v <- c("Red","Blue","yellow","violet")
sort.result <- sort(v)
print(sort.result)

# Listes

# Create a list containing strings, numbers, vectors and a logical values.
list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
print(list_data)


# Create lists.
list1 <- list(1:5)
print(list1)

list2 <-list(10:14)
print(list2)


# Convert the lists to vectors.
v1 <- unlist(list1)
v2 <- unlist(list2)

print(v1)
print(v2)

# Now add the vectors
result <- v1+v2
print(result)

#Factors
#Creation d'un vecteur comme input
data <- c("East","West","East","North","North","East","West","West","West","East","North")
print(data)
print(is.factor(data))

# Apply the factor function.
factor_data <- factor(data)
print(factor_data)
print(is.factor(factor_data))


#Data Reshaping

# Create vector objects.
city <- c("Tampa","Seattle","Hartford","Denver")
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)

# Combine above three vectors into one data frame.
addresses <- cbind(city,state,zipcode)

# Print a header.
cat("# # # # The First data frame\n") 

# Print the data frame.
print(addresses)

# Create another data frame with similar columns
new.address <- data.frame(
   city = c("Lowry","Charlotte"),
   state = c("CO","FL"),
   zipcode = c("80230","33949"),
   stringsAsFactors = FALSE
)
# Print a header.
cat("# # # The Second data frame\n") 

# Print the data frame.
print(new.address)

# Combine rows form both the data frames.
all.addresses <- rbind(addresses,new.address)

# Print a header.
cat("# # # The combined data frame\n") 

# Print the result.
print(all.addresses)



