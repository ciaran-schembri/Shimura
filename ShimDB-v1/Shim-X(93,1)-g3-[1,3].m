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

s`ShimLabel := "93.1-[1,3]";

s`ShimDiscriminant :=  93;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-x^8 + 2*x^7 - 10*x^6 - 29*x^5 - 21*x^4 - 35*x^3 - 28*x^2 - 9*x - 13,Rx!x^3 + x^2 + 1]);

return s;

