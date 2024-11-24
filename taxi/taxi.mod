param n:=4;
param cout {1..n,1..n} >= 0;

var x {1..n,1..n} >= 0;

minimize taxi :
	sum{i in 1..n,j in 1..n} cout[i,j]*x[i,j];
	
subject to UnePersonneParTaxi {j in 1..n}:
	sum{i in 1..n} x[i,j]=1;
	
subject to UneTaxiParPersonne {i in 1..n}:
	sum{j in 1..n} x[i,j] = 1;