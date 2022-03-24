Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "6.29-[1,29]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner :=  [ 1, 29 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-16*x^8 + 523*x^6 - 6131*x^4 + 29845*x^2 -
48778,Rx!x^3 + x]);

return s;

