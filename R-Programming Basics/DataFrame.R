### Dataframe is a special kind of list in which the elements are of same length.

vec1 = c(12L,13L,14L)
vec2 = c(34L,35L,36L)
vec3= c(45L,46L,47L)

df <- data.frame(vec1,vec2,vec3)
print(df)
class(df)

#### give name to the columns in dataframe

df <- data.frame("A" =vec1,"B" = vec2, "C" =vec3 )
df
str(df)
names(df)
nrow(df)
ncol(df)
summary(df)

vec1 = c("Rohan","Shyam","John")
vec2 = c(30L,32L,28L)
vec3= c("IT","Doctor","Actor")

list_ = list(vec1,vec2,vec3)
df_new = data.frame(list_)
print(df_new)
#### Accessing elements from DataFrame
df["A"]
df[2]
df[1][3] ## Error
df[[1]][3]

df[c("A","B")]
df[["C"]][3]
df[1:2]
df[1:2,]
df[1:2,2]
df[,2:3]
df$A
df$C>45
df[df$C>45,]
df[c(FALSE,TRUE,TRUE)]
df[c(FALSE,TRUE,TRUE),]

#### Modifiying a Dataframe
print(df)
df["D"] = c("A","B","Z") #adding a new column
print(df)

#using cbind() to add a column

df = cbind(df,"E" = c("y","n","y"))
print(df)

df[["D"]][1] <- "X" #modifying value in a column
## adding a new row

df[4,] = c(67,68,69,"A","n")
print(df)

# we can also use "rbind" method to add a row

df = rbind(df,c(55,56,57,"B","y"))
print(df)

ncol(df)
nrow(df)

#### Deleting elements from Dataframe
df$E <- NULL
print(df)

ncol(df)
##dropping rows

df <- df[-5,]
print(df)
nrow(df)

