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

s`ShimLabel := "134.1-[1,67]";

s`ShimDiscriminant :=  134;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 67 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!2*x^8 - 2*x^7 - 13*x^6 + 14*x^5 + 20*x^4 -
35*x^3 + 13*x^2 + 32*x - 32,Rx!x^3 + x^2]);

return s;

