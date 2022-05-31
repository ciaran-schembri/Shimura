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

s`ShimLabel := "10.11-[1,11]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 11 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-2*x^8 - 49*x^6 - 397*x^4 - 1079*x^2 - 22,Rx!x^3 + x]);

return s;

