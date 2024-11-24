
var x1;
var x2;
maximize z : 100*x1+200*x2; 
subject to hictar : x1+x2<=150 ; 
		   eau : 4*x1+2*x2<=440;
		   heur : x1+4*x2<=480;
		   ministere : x1<=90;
limit1 :x1>=0;
limit2 :x2>=0;

