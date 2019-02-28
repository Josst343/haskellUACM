imprimir x = if (x ==1)
    then 
        putStr "x"
    else
    do
        putStr "x"
        imprimir (x-1)

pinta x = if(x == 1)
    then 
    do
    putStr "\n"
    imprimir x
    putStr "\n"
    else
    do
    putStr "\n"
    imprimir x
    pinta(x-1)
    imprimir x 
    putStr"\n"

