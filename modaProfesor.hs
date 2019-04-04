moda lista = recorre_moda lista (lista!!0) 1

recorre_moda lista moda veces= if null lista
                               then moda
                               else
                                 do
                                                --funcion,list ,    n     ,vecex
                                    let xveces=cuentaelem lista (lista!!0) 0
                                    if(xveces > veces) 
                                    then 
                                       do   
                                          recorre_moda (tail lista) (lista!!0) xveces
                                    else
                                       recorre_moda (tail lista) moda veces
             
                               

cuentaelem lista n veces=do
                         if null lista
                         then
                            veces
                         else
                            if lista!!0==n
                            then
                               do
                                 let x=veces+1
                                 cuentaelem (tail lista) n x                       
                            else                      
                               cuentaelem (tail lista) n veces  