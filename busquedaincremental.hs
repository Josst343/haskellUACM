z=[-10..100]

buscar x = buscaArreglo(x,0,z)

buscaArreglo (x,cont,z)=if(cont > (length z-1))then 
    putStr "No encontrado"
    else do{
        if(z!!cont ==x)then do
            putStr "encontrado en la posicion: \n"
            print (cont)
            putStr "el valor es \n"
            print (z!!cont)
            putStr "\n"
        else 
                buscaArreglo(x,cont+1,z)
    }