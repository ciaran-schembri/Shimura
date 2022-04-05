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

s`ShimLabel := "51.1-[1,17]";

s`ShimDiscriminant :=  51;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 17 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-2*x^6 - 15*x^5 - 39*x^4 - 21*x^3 + 19*x^2
- 3*x,Rx!x^3 + x]);

return s;

