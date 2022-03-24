Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "194.1-[1,97]";

s`ShimDiscriminant :=  194;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 97 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-x^10 - 3*x^9 - 7*x^8 - 19*x^7 - 29*x^6 - 
43*x^5 - 61*x^4 - 47*x^3 - 55*x^2 - 24*x - 16,Rx!x^4 + x^2]);

return s;

