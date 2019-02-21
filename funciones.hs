doble x = x+x

triple x = (doble x)+x

incrementa x = if (x>100)
    then 
    doble x
else  triple x

factorial x = if(x==1)
then 
    1
else
    x*factorial(x-1)
    