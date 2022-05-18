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

s`ShimLabel := "10.11-[1,22]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 22 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!x^6 - 2*x^4 - 7*x^3 - 2*x^2 + 1,Rx!x^3 + 1]);

return s;

