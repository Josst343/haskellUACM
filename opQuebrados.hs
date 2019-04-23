suma x y = (div ((fst x)*(snd y) + (fst y)*(snd x)) (gcd ((fst x)*(snd y) + (fst y)*(snd x))((snd x)*(snd y))  ),div  ((snd x)*(snd y))(gcd ((fst x)*(snd y) + (fst y)*(snd x))((snd x)*(snd y))))

resta x y = (div ((fst x)*(snd y) - (fst y)*(snd x)) (gcd ((fst x)*(snd y) - (fst y)*(snd x))((snd x)*(snd y))  ),div  ((snd x)*(snd y))(gcd ((fst x)*(snd y) - (fst y)*(snd x))((snd x)*(snd y))))

multiplicacion x y = (div ((fst x)* (fst y)) (gcd ((fst x)* (fst y))((snd x)*(snd y))),div ((snd x)*(snd y)) (gcd ((fst x)* (fst y))((snd x)*(snd y))))

division x y = (div ((fst x)* (snd y)) (gcd ((fst x)* (snd y))((snd x)*(fst y))),div ((snd x)*(fst y)) (gcd ((fst x)* (snd y))((snd x)*(fst y))))


           