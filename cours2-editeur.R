med=function(x)
{
n=length(x)
odd.even=n%%2
if (odd.even == 0)
	{
	med = (sort(x)[n/2] + sort(x)[1+n/2])/2
	} 
else	{
	med = sort(x)[ceiling(n/2)]
	}
return(med)
}

maxi=function(x,y)
{
z=c(x,y)
max(z)
}

medi=function(x,y,z)
{
m1=median(x); m2=median(y); m3=median(z)
return(list(medx=m1, medy=m2, medz=m3))
}

(function(x,y)
{z=2*x + y^2; x+y+z})(1:7,2)

(X=matrix(1:12,nr=3))
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
apply(X,1,sum)
[1] 22 26 30
apply(X,2,sum)
[1]  6 15 24 33
apply(X,1,sqrt)
         [,1]     [,2]     [,3]
[1,] 1.000000 1.414214 1.732051
[2,] 2.000000 2.236068 2.449490
[3,] 2.645751 2.828427 3.000000
[4,] 3.162278 3.316625 3.464102
apply(X,2,sqrt)
         [,1]     [,2]     [,3]     [,4]
[1,] 1.000000 2.000000 2.645751 3.162278
[2,] 1.414214 2.236068 2.828427 3.316625
[3,] 1.732051 2.449490 3.000000 3.464102
apply(X,1, function(x) x^2+x)
     [,1] [,2] [,3]
[1,]    2    6   12
[2,]   20   30   42
[3,]   56   72   90
[4,]  110  132  156
apply(X,2, function(x) x^2+x)
     [,1] [,2] [,3] [,4]
[1,]    2   20   56  110
[2,]    6   30   72  132
[3,]   12   42   90  156
sapply(1:3, function(x) x^2)
[1] 1 4 9
lapply(1:3, function(x) x^2)
[[1]]
[1] 1

[[2]]
[1] 4

[[3]]
[1] 9
a=c("a","b","c","d"); b=1:8; c=c(T,T,F,T,F)
mylist=list(a,b,c)
# cacul la fonction pour chaque sous liste 
lapply(mylist,length)
[[1]]
[1] 4

[[2]]
[1] 8

[[3]]
[1] 5
# ne calcul la fonction que pour les valeurs numériques
lapply(mylist,mean)
[[1]]
[1] NA

[[2]]
[1] 4.5

[[3]]
[1] 0.6
many.y = means.vars = function(...)
0{
data = list(...)
n = length(data)
means = numeric(n)
vars = numeric(n)
for (i in 1:n)
	{
	means[i] = mean(data[[i]])
	vars[i] = var(data[[i]])
	}
print(means); print(vars)
}
# y = 1 - p(X>x)
(y = 1-pnorm(160,mean=132,sd=13))
[1] 0.01562612
# y = p(X<x)
(y = pnorm(160,mean=132,sd=13, lower.tail=FALSE))
[1] 0.01562612
# loi discrete :
(1-pbinom(15,size=20,prob=0.5))=P(X>=16)
> x = rexp(1000,2)
> xn_bar = mean(x)
> (xn_bar = mean(x))
[1] 0.4980399
> borne_inf = xn_bar - (sd(x)/sqrt(1000))*(qnorm(0.975))
> (borne_inf)
[1] 0.4650977
> (borne_inf = xn_bar - (sd(x)/sqrt(1000))*(qnorm(0.975)))
[1] 0.4650977
> (borne_inf = xn_bar + (sd(x)/sqrt(1000))*(qnorm(0.975)))
[1] 0.5309821
ci95=function(x)
{
x_bar = mean(x)
sn = sd(x)
borne_inf = x_bar - (sn/sqrt(length(x)))*(qt(0.975,length(x)-1))
borne_sup = x_bar + (sn/sqrt(length(x)))*(qt(0.975,length(x)-1))
print(borne_inf)
print(borne_sup)
}

for(i in 1:100)
{
x = rpois(1000,2)
y = cumsum(x)/1:1000
lines(1:1000,y,type="l")
}

> for(i in 1:100)
{
x = rpois(1000,2)
y = cumsum(x)/1:1000
lines(1:1000,y,type="l")
}
abline(2,0,col='red') 

x=rnorm(100,mean=3,sd=5)

> x=rnorm(100,mean=3,sd=5)
> x = matrix(rpois(1000,1.5),nr=100)
> (apply(x,1,mean))
  [1] 1.9 1.3 0.7 1.2 2.1 0.7 2.1 1.9 1.9 1.4 2.0 1.7 1.2 1.5 2.0 2.5 1.4 2.6
 [19] 1.5 0.8 1.0 1.3 1.7 1.3 1.6 2.0 2.2 1.4 1.8 1.1 1.4 1.5 2.5 1.6 2.5 0.8
 [37] 1.6 1.9 1.3 0.9 1.4 1.4 1.3 1.3 1.3 2.3 1.2 1.7 1.7 1.4 1.1 1.8 1.8 1.0
 [55] 1.7 2.5 1.7 1.4 1.7 1.2 1.7 1.0 2.0 1.6 1.4 1.5 1.7 1.0 1.0 0.8 1.0 1.3
 [73] 1.7 1.3 1.2 1.6 1.0 0.8 1.8 1.3 1.4 1.8 1.1 1.2 1.0 1.5 1.4 1.7 1.3 1.2
 [91] 2.0 1.8 2.2 1.3 1.3 1.6 1.3 1.5 1.3 0.8
> (apply(x,1,mean))
  [1] 1.9 1.3 0.7 1.2 2.1 0.7 2.1 1.9 1.9 1.4 2.0 1.7 1.2 1.5 2.0 2.5 1.4 2.6
 [19] 1.5 0.8 1.0 1.3 1.7 1.3 1.6 2.0 2.2 1.4 1.8 1.1 1.4 1.5 2.5 1.6 2.5 0.8
 [37] 1.6 1.9 1.3 0.9 1.4 1.4 1.3 1.3 1.3 2.3 1.2 1.7 1.7 1.4 1.1 1.8 1.8 1.0
 [55] 1.7 2.5 1.7 1.4 1.7 1.2 1.7 1.0 2.0 1.6 1.4 1.5 1.7 1.0 1.0 0.8 1.0 1.3
 [73] 1.7 1.3 1.2 1.6 1.0 0.8 1.8 1.3 1.4 1.8 1.1 1.2 1.0 1.5 1.4 1.7 1.3 1.2
 [91] 2.0 1.8 2.2 1.3 1.3 1.6 1.3 1.5 1.3 0.8
> (apply(x,2,mean))
 [1] 1.57 1.32 1.56 1.42 1.49 1.59 1.68 1.33 1.38 1.67
> write.table(x, "/Users/hugue/Documents/R/matrixX.txt")
> X2 = read.table("matrixX.txt")
Error in file(file, "rt") : impossible d'ouvrir la connexion
De plus : Warning message:
In file(file, "rt") :
  impossible d'ouvrir le fichier 'matrixX.txt' : No such file or directory
> X2 = read.table("/Users/hugue/Documents/R/matrixX.txt")
> head(X2)
  V1 V2 V3 V4 V5 V6 V7 V8 V9 V10
1  1  3  1  4  2  2  1  2  3   0
2  0  2  0  0  1  2  3  4  0   1
3  1  1  1  0  0  1  2  1  0   0
4  0  1  0  1  3  0  2  1  1   3
5  3  1  4  0  2  3  1  2  1   4
6  0  0  0  1  2  0  3  0  1   0
> head(X)
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12

> x = rnorm(100)
> mean(x)
[1] -0.05013524
> sd(x)
[1] 1.053343
> var(x)
[1] 1.109532
> median(x)
[1] -0.2366581
> range(x)
[1] -2.468803  2.400921
> quantile(x)
        0%        25%        50%        75%       100% 
-2.4688027 -0.7226619 -0.2366581  0.7424328  2.4009208 
> quantile(x, c(0.25,0.5,0.75))
       25%        50%        75% 
-0.7226619 -0.2366581  0.7424328 
