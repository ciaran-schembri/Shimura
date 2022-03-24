Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "14.5-[1,7]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 7 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-5*x^6 - 3*x^5 - 12*x^4 + 37*x^3 + 3*x^2 +
42*x - 92,Rx!x^2 + x]);

return s;

