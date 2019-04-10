unir xs ys = xs++ys

union xs ys = sinRepetidos (unir xs ys)
    
sinRepetidos [] = []
sinRepetidos (x:xs)=x: sinRepetidos(filter(/=x)xs)

interseccion xs ys =[z|  z<-xs , u<-ys,u==z ]

diferencia xs ys = sinRepetidos [z | z<- ys ,a<-xs,z/=a]

unicos []=[]
unicos (x:xs)
        | elem x xs = unicos (filter(/=x)xs)
        | otherwise = x : unicos xs

complemento xs ys =unicos ((xs++ys)++xs)