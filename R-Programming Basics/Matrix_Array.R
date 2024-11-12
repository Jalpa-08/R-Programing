## Matrices are advance versions of atomic vectors with dimensions as a special attribute.

## Thus,we can say matrices are special kind of vectors.

## Matrices are two dimensional data structures in R. The dimensions are popularly known as rows and columns.

## Since they are advance types of atomic vectors, so they can only contain elements of same datatypes.


## There are different ways to create a matrix in R.

## Let's discuss about them in detail.

#using matrix keyword 

mat = matrix(1:6) #not specifying number of rows and columns
print(mat)

# let's give rows and columns values

mat = matrix(1:12,nrow=2, ncol = 6)
print(mat)

mat = matrix(1:12,nrow=4, ncol = 3,byrow=TRUE)
print(mat)

#### you can also give the names of columns and rows in matrix
mat = matrix(1:12,nrow=4, ncol = 3,byrow=TRUE, 
             dimnames = (list(c("row1","row2","row3","row4"),
                              c("col1","col2","col3"))))
print(mat)

rownames(mat)
colnames(mat)

#### you can get dimension of matrix using dim( function)
dim(mat)

#### Another method
vec = c(1.2,3.2,4.5,46,54,21)
vec
# you can call dimension function with dim() function

dim(vec) = c(3,2)


# you can add column and row name to this matrix using rownames() and colnames() function

colnames(vec) <- c("A1","B1")
rownames(vec) <- c("a1","b1","c1")
vec

#### Using rbind & cbind to create a matrix
mat3 <- cbind(c(1,2,3,4,5,6)) #creating matrix of one column
mat3

mat3 <- cbind(c(1,2,3),c(12,13,14))
mat3

mat4 <- rbind(c(1,2,3,4,5,6)) #matrix of one row
mat4
mat4 <- rbind(c(1,2,3),c(4,5,6)) #matrix of one row
mat4

#### Accesing elements from Matrix
mat <- matrix(100:115 , nrow =4,ncol = 4 )

colnames(mat) <- c("A","B","C","D")
rownames(mat) <- c(1,2,3,4)
mat

#access first element

mat[1,]

#access 15th element

mat[15]

mat[10]

#access all element of row 3

mat[3,]

#access multiple rows

mat[c(2,4),]

#access all element of column 

mat[,"A"]

#access all element of column 
mat[,1]

#access multiple columns

mat[,c("A","B")]

mat[,c(1,2)]
# access element from a row and column

mat[4,2] #get element from 4throw and 2nd column
mat[4,][3]
mat[4,][2] # you can also use this method
mat[1,]["B"]
# access specific value in a row or column
mat[1,"C"]
# accessing multiple rows and columns

mat[c(1,4),c("C","D")]

#### Dropping value from matrix
mat[-2,] #prints all rows without 1st row
mat[,-4]  #drops 4th columns

## If you want to drop values from matrix actually
mat_new <- mat[-1,]
mat_new
#### Accessing elements using logical opeartors
mat[1]
mat[(TRUE)] # mat[c(TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,)]
mat[1,]
mat[(TRUE),]
mat[c(1,2)]
mat[c(TRUE,FALSE)] #get numbers at odd index #recylcing 

mat[c(1,2),]
mat[c(TRUE,FALSE),] #get numbers at odd index #recylcing 
mat[c(FALSE,TRUE)]#get numbers at even index  #recylcing 
mat[c(FALSE,TRUE),]
mat[c(FALSE,TRUE),c(TRUE,TRUE)]
mat[c(TRUE,FALSE),c(TRUE,FALSE)]

#### Using conditional operators
mat[mat<=109]
mat[mat==105]

#### Modify elements of a Matrix
mat[1,][3]
mat[1,][3] = 801
mat[1,][3]

mat[,"A"] =c(1,11,12,13)
class(mat[1])
class(mat[10])

#### Arithmetic operations on Matrix
mat1 = matrix(1:9, nrow=3,ncol=3)
mat2 = matrix(10:18,nrow=3,ncol=3)
#sum of matrices
mat1 + mat2 #element wise sum will happen
#element wise matrix multiplication using * operator

mat1 * mat2 

# let try to add matrx of different sizes

mat3 <- matrix(1:6,nrow=3)

mat1 + mat3

#### Transposing matrix
mat3_transpose = t(mat3)
mat3_transpose

Arrays are matrices with more than 2 dimensions i.e. arrays are multi dimensional matrices.
arr = array(1:12,dim=c(2,2,3)) #dimension represents rows,columns and number of matrices

#so we basically are creating 3 matrices of dim 2*2
print(arr)

#### Naming Col and Rows
vec1 = c(1,2,3,4)
vec2 = c(7,8,9,10)

colnames = c("A","B")
rownames = c("a","b")

mat_names = c("Mat1","Mat2")

arr_mat = array(c(vec1,vec2),dim = c(2,2,2), dimnames = list(rownames,colnames,mat_names))
print(arr_mat)

arr_mat[1,1,1] #first row first column from first matrix
arr_mat[1,1,2] #first row first column from second matrix
arr_mat[2,,2] #whole second row from second matrix
arr_mat[,2,1] #whole second columns from first matrix
arr_mat[,,1] #all elements of first matrix
arr_mat[1,1,]