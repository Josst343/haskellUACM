divisible x y = mod x y ==0

divisores x =[y| y<-[1..x-1],divisible x y]

numAbun xs = [y | y<-xs, sum(divisores y)>y]