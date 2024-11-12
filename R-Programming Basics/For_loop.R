vec = c(12,13,14,15)

for (i in vec){
  print(i)
  break
}

----------------------
  
  #let's use break to break out if there is missing values in a list
  
  lst = list("one",1,"two",2," ",3)
  
  for (i in lst){
    
    if (i==" "){
      break
    }
    else{
      
      print(i)
    }
  }
  
  ------------------------------
    i=1
    lst = list("one",1,"two",2," ",3)
    while (i<=length(lst)){
      
      if (lst[i]==" "){
        break  
      }
      
      else{
        print(lst[i])
      }
      i = i+1
    }
    
    ----------------------------
      #let's use next to skip printing the missing values in a list
      
      lst = list("one",1,"two",2," ",3)
    
    for (i in lst){
      
      if (i==" "){
        next
      }
      else{
        
        print(i)
      }
    }  
    
    ----------------------------
    vec = c("A","b","C","c","D","e","f")
    
    for (i in vec){
      if (i == toupper(i)){
        
        next
      }
      else{
        print(i)
      }
    }
    
    ---------------------------
      
    i=1
    repeat{
      
      print(i)
      i=i+1
      if(i>10){
        
        break
      }
    }
    
    -----------------------------
    vec = c(1,2,3,4)
    for (i in vec){
      print(i)
    }
    
    
    ___________________
    
    
      