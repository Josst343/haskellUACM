linea x = if(x ==0 )
        then
            putStr("\n")  
    else do
        putStr("x")
        linea(x-1)

mitad1 x = if(x>=0)
        then 
        do
        mitad1(x-1)
        linea(x)
        else
        putStr "\n"

mitad2 x = if(x==1)
    then 
    do
    linea x
    else
    do
    linea x
    mitad2(x-1)

flecha x = do
    mitad1 x
    mitad2 (x-1)