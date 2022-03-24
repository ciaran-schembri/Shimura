Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "10.19-[1,5]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-2*x^8 + 21*x^6 - 127*x^4 + 135*x^2 - 
40,Rx!x^3 + x]);

return s;

