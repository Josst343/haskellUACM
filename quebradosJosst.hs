import Data.Char
a = "1/2+2/3 8/5-7/9 15/8÷2/5 3/5*9/5"

partir :: String ->Char-> [String]
partir [] c = [""]
partir (x:xs) c
    | x == c = "" : partir xs c
    | otherwise = (x : head (partir xs c)) :( tail (partir xs c))


suma x y = (div ((fst x)*(snd y) + (fst y)*(snd x)) (gcd ((fst x)*(snd y) + (fst y)*(snd x))((snd x)*(snd y))  ),div  ((snd x)*(snd y))(gcd ((fst x)*(snd y) + (fst y)*(snd x))((snd x)*(snd y))))

resta x y = (div ((fst x)*(snd y) - (fst y)*(snd x)) (gcd ((fst x)*(snd y) - (fst y)*(snd x))((snd x)*(snd y))  ),div  ((snd x)*(snd y))(gcd ((fst x)*(snd y) - (fst y)*(snd x))((snd x)*(snd y))))

multiplicacion x y = (div ((fst x)* (fst y)) (gcd ((fst x)* (fst y))((snd x)*(snd y))),div ((snd x)*(snd y)) (gcd ((fst x)* (fst y))((snd x)*(snd y))))

division x y = (div ((fst x)* (snd y)) (gcd ((fst x)* (snd y))((snd x)*(fst y))),div ((snd x)*(fst y)) (gcd ((fst x)* (snd y))((snd x)*(fst y))))

separaOp xs = partir xs ' '

operando :: String->Char
operando []='\NUL'
operando (x:xs)
    | x ==  '/' = operando xs 
    | isNumber x = operando xs
    | otherwise = x

prueba xs = [partir x (operando f) | (x,f) <- zip xs xs]