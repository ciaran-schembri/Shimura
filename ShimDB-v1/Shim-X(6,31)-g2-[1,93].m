Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(),
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;

s`ShimLabel := "6.31-[1,93]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 93 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!8*x^6 + 24*x^5 + 9*x^4 - 22*x^3 - 8*x^2 + 7*x - 1,Rx!x^2 + x]);

return s;

