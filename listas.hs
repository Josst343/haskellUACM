sinRepetidos [] = []
sinRepetidos (x:xs)=x: sinRepetidos(filter(/=x)xs)

unicos []=[]
unicos (x:xs)
        | elem x xs = unicos (filter(/=x)xs)
        | otherwise = x : unicos xs

repetidos [] = []
repetidos (x:xs)   
                | elem x xs = x : repetidos xs
                | otherwise =  repetidos xs
        