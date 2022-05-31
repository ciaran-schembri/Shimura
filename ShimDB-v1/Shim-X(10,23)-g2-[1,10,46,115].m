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

s`ShimLabel := "10.23-[1,10,46,115]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 10, 46, 115 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-80*x^5 - 152*x^4 - 37*x^3 - 41*x^2 - 159*x - 43,Rx!0]);

return s;

