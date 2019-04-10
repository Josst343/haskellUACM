
import Data.List

xs = [2,2,2,1,1,1,1,1,1,1,2,2,2,2,3,3,3,3,3,3,3]
--Frecuenia nos ayuda a calcular cuantas veces se sencuentra un numero en una lista
--nub -> nub xs es la lista obtenida eliminando las repeticiones de xs.
frecuencias xs = [(y,ocurrencias y xs) | y <-nub xs]
    where ocurrencias y xs = length [1 | x <- xs, x == y]

moda xs = [y | (y,n) <- lisAux, n == m]
    where lisAux = frecuencias xs
          m  = maximum (map snd lisAux)

--snd es el segundo elemento par de el par de  numeros 