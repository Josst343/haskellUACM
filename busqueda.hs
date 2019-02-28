z=[-10..100]

buscar x = busqueda(x,0,length z -1)

busqueda (x,l,r) = if(l > r)then
    print (-1)
    else do {
       if((z!!(div(l+r)2))<x)then
        busqueda(x,(div(l+r)2)+1,r)
        else do{
            if((z!!(div(l+r)2))>x)then
                busqueda(x,l,(div(l+r)2)-1)
                else do {
                   if((z!!(div(l+r)2))==x) then
                    do
                    putStr "la posicion es \n"
                    print(div(l+r)2)
                    putStr "el valor es \n"
                    print (z!!div(l+r)2)
                    else putStr "fallo" 
                }
        }
    }