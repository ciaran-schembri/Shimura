Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "26.3-[1,39]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 39 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!x^7 + 3*x^6 + 7*x^5 + 19*x^4 + 29*x^3 + 
19*x^2 + 6*x - 6,Rx!x^4 + x^2 + 1]);

return s;

