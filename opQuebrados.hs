parteAbajo x y = (lcm(snd x)(snd y))

parteArriba x y =  (div (parteAbajo  x y)(snd x)) * (fst x) +  (div (parteAbajo  x y)(snd y)) * (fst y)

sumares  x y =(div (parteArriba x y)(gcd (parteArriba x y)(parteAbajo x y)) ,div (parteAbajo x y) (gcd (parteArriba x y)(parteAbajo x y)))

parteArribares x y = (div (parteAbajo  x y)(snd x)) * (fst x) - (div (parteAbajo  x y)(snd y)) * (fst y)

restares x y =(div(parteArribares x y)(gcd (parteArribares x y)(parteAbajo x y)), div (parteAbajo x y)(gcd(parteArribares x y )(parteAbajo x y)))

pareteArribaDiv x y = (fst x) * snd (y)
pareteAbajoDiv x y = (snd x) * (fst y)
resDivicion  x y = (div (pareteArribaDiv x y )(gcd (pareteArribaDiv x y )(pareteAbajoDiv x y)), div (pareteAbajoDiv x  y)(gcd(pareteArribaDiv x y)(pareteAbajoDiv x y)))

paretArribaMult x y = (fst x)*(fst y)
paretAbajoMult x y = (snd x)* (snd y)
restMult x y =(div (paretArribaMult x y)(gcd (paretArribaMult x y)(paretArribaMult x y)) ,div(paretAbajoMult x y)(gcd(paretArribaMult x y)(paretAbajoMult x y)))
