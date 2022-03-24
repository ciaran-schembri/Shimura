Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "94.1-[1,47]";

s`ShimDiscriminant :=  94;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 47 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-2*x^5 - 3*x^4 - x^3 - 2*x^2 + 7*x - 
3,Rx!x^2 + x]);

return s;

