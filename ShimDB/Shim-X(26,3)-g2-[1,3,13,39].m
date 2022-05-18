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

s`ShimLabel := "26.3-[1,3,13,39]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 3, 13, 39 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!2*x^5 + 3*x^4 + 16*x^3 - 23*x^2 + 6*x,Rx!x^2 + x]);

return s;

