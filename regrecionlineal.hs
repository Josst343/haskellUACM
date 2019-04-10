x=[100,90,80,45,50,50,60,40,25,20]
y=[3,5,9,10,20,21,24,24,27,35]

sigma zs= sum(zs)

cuadrado ls= [z*z|z<- ls ]

producto xs ys = [x*y | (x,y) <- zip xs ys]

calculaAsuperior = (length x) * (sigma (producto x y))- (sigma x  * sigma y)

calculaAinferiro =(length x * sigma(cuadrado x))- (sigma x * sigma x)

cB = fromIntegral(sigma y - (cA) *fromIntegral(sigma x) )/ fromIntegral(length x)

cA = fromIntegral (calculaAsuperior)/ fromIntegral(calculaAinferiro)

