
## Operators ##
a <- TRUE
b <- FALSE
print(class(a))
print(class(b))

# cat can be used to print multiple values together

cat("value od a and b are",a,b)


## Numeric
n1 = 21
print(n1)
print(class(n1))

n2 = 21.22
print(n2)
print(class(n2))

n3=110.10101010101111
print(n3)
print(class(n3))

n3_format = formatC(n3,digits=10,format="f")
print(n3_format)


## integer

n4 = 12L
print(n4)
print(class(n4))

## character

char <- "good morning Jalpa"
print(char)
print(class(char))

## complex
complex_1 = 5 + 4i
print(complex_1)
print(class(complex_1))

#built datatype

print(LETTERS)
print(month.abb)
print(pi)

# "->" variable on right side

# Arithmetic Operator

a <- 24
b <- 21
print(a+b)
print(a-b)
print(a*b)
print(a/b)

print(a%%b) # modulus
print(a%/%b)
print(a^2)


# Logical Operator

# "&" Logical And operator

a <- 3
b <- 6
a & b 

vec1 = c(2,3,4,TRUE,FALSE,0)
vec2 = c(1,2,3,TRUE,FALSE,5)

vec1 & vec2

vec1 = c(FALSE,3,4,TRUE,FALSE,0)
vec2 = c(TRUE,2,3,TRUE,FALSE,5)

# "|" logical vectorized
TRUE | TRUE

vec1 = c(TRUE,3,4,TRUE,FALSE,0)
vec2 = c(TRUE,2,3,TRUE,TRUE,5)
vec1 | vec2

#"||" non vectorized
vec1 = c(TRUE,3,4,TRUE,FALSE)
vec2 = c(TRUE,2,3,TRUE,FALSE)
vec1 | vec2

# ! not operator
!a
!b
a|b
!(a|b)


a <- 3
b = 4
a>b
a<b

vec1 = c(TRUE,3,4,TRUE,FALSE,0)
vec2 = c(TRUE,2,3,TRUE,TRUE,-2)

vec1 > vec2

## "--" operator
a==b

vec1 = c(TRUE,3,4,TRUE,FALSE,0)
vec2 = c(TRUE,2,3,TRUE,TRUE,-2)

vec1 == vec2
vec1 >= vec2
vec1 <= vec2
vec1 != vec2

## Misc Operator
a <- 8
a < 2:10
print(a)

## "%in%" search given value in the vector
vec1 = c(100,3,4,8,FALSE,5)
var_1 = 10
var_2 = 12
var_2 %in% vec1

# Different data structure and metric vectors
vec.zero = c()
length(vec.zero)


vec.int = 1:12

print(vec.int)
vec.seq = seq(7,14,by=2)
vec.seq

vec.seq2 = seq(10,15,by=0.5)
vec.seq2

# to get sum of values in a vector
vec.integer = c(23L,84L,12L,13L,2L,45L,64L)
print(vec.integer)
sum12 = sum(vec.integer)
print(sum12)

# to get max of values in a vector
vec.float = c(78.9,2,3.4,1,65,5.6)
max_val = max(vec.float)

print(max_val)

# print sorted value of the vector in ascending order
vec.integer = c(23L,84L,12L,13L,2L,45L,64L)
print(sort(vec.integer)) 

# print sorted value of the vector in descending order
vec.integer = c(23L,84L,12L,13L,2L,45L,64L)
print(sort(vec.integer,decreasing = TRUE)) 

# to get the order of values in ascending order
vec.float = c(78.9,2,3.4,1,65,5.6)
print(sort(vec.float))



#calculate variance in the vector
vec.float = c(78.9,2,3.4,1,65,5.6)
print(var(vec.float)) 

#print length of vector
vec.complex = c(1+10i, 54i + 2, 6 + 57i)
print(length(vec.complex))


#Arithmetic Operator
vec1 <- c(24,56,54,87,57,42)
vec2 <- c(23.3,45.6,43,3,4,34)

cat("sum of vectors is :",vec1 + vec2) # addition of vectors
cat("Difference of vectors is : ",vec2 - vec1) # substraction of vector
cat("Multiplication example:", vec1*2)
print(vec1*vec2)
cat("Division example: ",vec1/vec2)
print(vec1/4)
cat("Integer division: ", vec1%/%2)
vec1/2

#### Arithmetic operations on two vectors on unequal length
vec1 <- c(24,56,54,87)
vec2 <- c(23.3,45.6)
v1 <- c(2,3)
v2 <- c(3,4,5)
v1 + v2
###### In such cases, the elements in vector of smaller length is repeated to perform the operation.
#i.e. vec2 becomes (23.3,45.6,23.3,45.6) for the operation.
vec1 + vec2
vec2

### Subsetting Vectors
vec = c('x','y','a','b','c')
#indexing in R starts from 1 unlike python where it starts from 0
vec[0]
vec[1]
length(vec)

vec[1:3]
vec[4:5]

vec[-3:4] # won't work
vec = c('x','y','a','b','c')
vec[-3:0] # want to get specific index values, here we are trying to get last two elements
# get last one element

vec[-4:0]

vec[0:] # won't work like python list

# get first and fourth value from the vector

vec[c(1,4)]

# get last 2nd,4th and 5th values

vec[c(2,4,5)]

#get 4th value twice

vec[c(4,4)]

vec[c(4,4,4,4,4,4)]
vec = c('x','y','a','b','c')

#drop values from vector
vec[-1] # will print all the values in vector except first one

#drop third value 
vec[-3] # will print all the values in vector except third one

#dropping multiple values
vec[c(-1,-5)]

#### but dropping values like shown above doesn't actually deletes value from vector, let's check:
vec
#### To actually drop value from vector, you can use below method:
vec = vec[-1]
vec

#### Out of range index
vec_new = c(1.2,3L,"new","vector")
length(vec_new)
vec_new[4]
vec[9]

#### selection using logical operators
vec.num = c(1.2,25,3.32,87.56,5.2,45,79)
length(vec.num)

# keep the value True at the index of value that you want, Flase at else places
vec.num[c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE)]

vec.num = c(1.2,25,3.32,87.56,5.2,45,79)
#### selection using realtional operators
vec.num[vec.num > 25]
vec.num[vec.num == 3.32]
vec.num[vec.num <= 3.32]

#### Deleting a vector
vec.num
vec.num <- NULL
vec.num
length(vec.num)

#### Named Vectors
vec_test = c(12,"A","B",32,"DataAnalyst","Bangalore")
vec_test_named = c("id"=12,"FirsName"="A","LastName"="B","Age"=32,"Job"="DataAnalyst","City"="Bangalore")
vec_test_named["Age"]
vec.named = c("Id" = 25, "Job" = "Data Scientist")
vec.named
vec.named["Id"]
vec.named["Job"]
#### Another way to create named vectors
vec.numbers = 1:26
vec.numbers
LETTERS
names(vec.numbers) = LETTERS
vec.numbers
vec.numbers["M"]
vec.numbers[vec.numbers > 15]