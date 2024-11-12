## If And Else Statement

Let's now talk about conditional statments in R.

As we make different decisions in real life based on some conditions, similary we can execute different tasks using our 
conditional statements such as If and else.

#### Using If

###### Syntax

if (condition) {
    
    Exectuion Statement
}



When the "condition" is true, then the "Exectuion Statement" will be executed, 
whereas if the "condition" is false, then nothing will execute.

a = TRUE
b = FALSE

if (a) {
    
    print("Condition is True!!")
}

if (b) {
    
    print("Condition is True!!")
}
   
   a <- "1234"

if (is.character(a)){
    print("True")
}

vec1 <- c(0,1)


if (vec1){
    
    print("First element is non-zero")
}

vec1 <- c(1,0)


if (vec1) {
    
    print("First element is non-zero")
}

#### Using Else

Now that we have seen the uses of "if" statement, let's now talk about "else" statment.
In the above example we have written an execution statement that will run when the condition given in 
"if" statement is TRUE but what if we need to execute some other specific statement when the condition is FALSE? 
  
  In such condition, we can use "Else" statement to execute some statment when our condition is not true.

##### Syntax

if (condition) {
  
  Exectuion Statement when condition is True
} else {
  
  Execution Statement when condition is false
}


a = TRUE
b = FALSE

if (a) {
  
  print("Condition is True!!")
} else {
  
  print("Condition is False!!")
}

if (b) {
  
  print("Condition is True!!")
} else {
  
  print("Condition is False!!")
}


vec1 <-c(0,1)

if (vec1){
  
  print("First element is non-zero")
  
} else {
  print("First element is zero" )
}

#### Nested If Else statements

Now we understand about both "if" and "else" statements and have seen their respective uses. But when you write a set of code in 
real time, it won't always be the situation for you to have only two staements to execute on the basis of a given conditions. 
We may have situations with multiple conditions to check and for each condition we would have to execute different set of codes.

In such cases, we can use a nested IF and Else statements i.e. using multiple if and else statements in a single code.


##### Syntax

if (condition 1) {
    
    Exectuion Statement when condition 1 is True
} else if (condition 2) {
        
    Exectuion Statement when condition 2 is True
} else if (condition 3) {
        
    Exectuion Statement when condition 3 is True
}

else {
        
    Exectuion Statement when all the conditions are false
}


a = FALSE
b = FALSE

if (b) {
    
    print("b is True!!")
} else if (a)  {
    
    print("a is True!!")
} else{
    
    print("None are true!!")
}

name = readline("What is your name?")
salary = as.integer(readline("What is your salary?"))

print(name)
print(salary)

if ((salary) <20000){
    print("No tax to be charged.")
} else if ((salary) >20000 && (salary) <30000){
    cat("Tax to be charged is 2.5% of per annum salary","
                                        and the tax is", 2.5*salary/100)
} else if ((salary) > 30000 && (salary) <60000){
    cat("Tax to be charged is 5% of per annum salary","and the tax is :", 5*(salary)/100)
} else {
    cat("Tax to be charged is 7.5% of per annum salary","
                                        and the tax is", 7.5*(salary)/100)
} 

#### ifelse() Function


There is a function defined in R "ifelse()" which can be used with an entire vector to test certain conditions with an simple syntax.

this function returns value of same size as the variable/vector.

##### Syntax

ifelse(condition, statement to execute if true, statement to execute if false)

vec1  = c(-4:2)
vec1
print(5/vec1)

if (vec1!=0){
    
    print(5/vec1)
}

ifelse(vec1!=0,vec1,NA)

5/ifelse(vec1!=0,vec1,NA)

vec1

sqrt(vec1)

sqrt(ifelse(vec1 >=0,vec1,NA))

ifelse(vec1%%2==0,"even","odd")

vec = c
vec

ifelse(vec >= 5,TRUE ,FALSE)


