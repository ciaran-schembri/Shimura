Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "93.1-[1,93]";

s`ShimDiscriminant :=  93;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 93 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!x^3 + x^2 - 2*x,Rx!x^3 + x + 1]);

return s;

