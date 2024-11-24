param n:=4;
param p {1..n,1..n} >= 0;

var x {1..n,1..n} >= 0;

maximize Production :
	sum{i in 1..n,j in 1..n} p[i,j]*x[i,j];
	
subject to UnePersonneParMachine {j in 1..n}:
	sum{i in 1..n} x[i,j]=1;
	
subject to UneMachineParPersonne {i in 1..n}:
	sum{j in 1..n} x[i,j] = 1;