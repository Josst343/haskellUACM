divisible x y = mod x y ==0

divisores x =[y| y<-[1..x-1],divisible x y]

perfecto x = x == sum(divisores x)

lista xs = [x | x<-xs , perfecto x ]