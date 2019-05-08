import Data.List
ma=[[1.0,2.0,1.0,0.0],[1.0,1.0,1.0,1.0],[2.0,2.0,2.0,2.0],[2.0,2.0,3.0,4.0]]
mb=[[2.0,2.0,2.0,2.0],[1.0,1.0,1.0,1.0],[-1.0,-1.0,-1.0,-1.0],[0.0,0.0,0.0,0.0]]

mc=[[2.0,5.0,7.0,9.0],[8.0,3.0,5.0,6.0],[3.0,2.0,6.0,4.0],[3.0,7.0,6.0,9.0]]
md=[[5.0,6.0,2.0,1.0],[6.0,4.0,3.0,7.0],[-7.0,-4.0,-5.0,-3.0],[6.0,5.0,3.0,3.0]]


prodcol::[Double]->[Double]->[Double]
prodcol [] vecB = []
prodcol vecA [] = []
prodcol (x:xs) (xb:xsb) = (x*xb):(prodcol xs xsb)


prodmat x ys = [prodcol x y| y<- ys]

construlle zs p = [prodmat z p |z<-zs]

resultado matA matB = [map(sum)x | x<-construlle matA (transpose matB)]
