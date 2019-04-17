x=[100,90,80,45,50,50,60,40,25,20]
y=[3,5,9,10,20,21,24,24,27,35]

promedio z = fromIntegral(sum z) / fromIntegral(length z)

lisProm xs = [fromIntegral(x)-(promedio xs)|x<-xs]

cuadrado xs = [x^2| x <-lisProm xs]
multiplicaList xs ys = [(x*y)|(x,y)<- zip xs ys]

parteArriba =sum(multiplicaList(lisProm(x))(lisProm(y)))

parteAbajo =sqrt(sum(cuadrado x))* sqrt(sum(cuadrado y))

resultado = parteArriba / parteAbajo