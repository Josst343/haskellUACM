z = [1..5]

varianza =
     divide z
    
desvacionEstandar =
    sqrt(varianza)


promedio z = 
    sum z/fromIntegral(length z)


diferencia z =
    map (promedio z -) z

cuadrado z =
    map (^2)(diferencia z)

suma z=
    sum (cuadrado z)

divide z = 
    (suma z) /  fromIntegral(length z)