unir xs ys = xs++ys

union xs ys = sinRepetidos (unir xs ys)
    
sinRepetidos [] = []
sinRepetidos (x:xs)=x: sinRepetidos(filter(/=x)xs)

interseccion xs ys =[z|  z<-xs , u<-ys,u==z ]


diferencia xs ys  = [z | z<-xs , u<-ys,,z/=u]