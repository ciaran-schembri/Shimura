Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "87.1-[1,29]";

s`ShimDiscriminant :=  87;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 29 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!3*x^8 + 18*x^7 + 70*x^6 + 93*x^5 - 36*x^4 
- 81*x^3 + 23*x^2 + 14*x - 5,Rx!x^3 + x^2 + 1]);

return s;

