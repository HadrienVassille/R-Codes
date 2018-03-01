data<- read.csv("input.csv")
print(data)
print(ncol(data))
print(nrow(data))

# Get the max salary from data frame.
sal <- max(data$salary)
print(sal)

# Get the person detail having max salary.
retval <- subset(data, salary == max(salary))
print(retval)

#Get all the people working in the IT department
retval <- subset( data, dept == "IT")
print(retval)

#Get the persons in IT department whose salary is greater than 600
retval<- subset(data, dept=="IT"& salary>600)
print(retval)

# Get the people who joined on or after 2014
retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(retval)
# Write filtered data into a new file.
write.csv(retval,"output.csv", row.names =FALSE)
newdata <- read.csv("output.csv")
print(newdata)

# Read the first worksheet in the file input.xlsx.
data <- read.xlsx("input.xlsx", sheetIndex = 1)
print(data)

# Load the package required to read XML files.
library("XML")

# Also load the other required package.
library("methods")

# Convert the input xml file to a data frame.
xmldataframe <- xmlToDataFrame("input.xml")
print(xmldataframe)



#R Databases 

# Create a connection Object to MySQL database.
# We will connect to the sampel database named "sakila" that comes with MySql installation.
mysqlconnection = dbConnect(MySQL(), user = 'root', password = '', dbname = 'sakila',
   host = 'localhost')

# List the tables available in this database.
 dbListTables(mysqlconnection)
