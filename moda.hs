
import Data.List

xs = [1,1,1,1,5,5,5,5,4,4,4,4,3,3,3,3,2,2,2,2,1,1,1,1]

frecuencias xs = [(y,ocurrencias y xs) | y <- sort (nub xs)]
    where ocurrencias y xs = length [1 | x <- xs, x == y]