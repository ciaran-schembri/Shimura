Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "6.31-[1,62]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 62 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-60*x^8 + 36*x^7 + 155*x^6 - 473*x^5 - 
191*x^4 + 847*x^3 - 88*x^2 - 432*x + 162,Rx!x^2 + x]);

return s;

