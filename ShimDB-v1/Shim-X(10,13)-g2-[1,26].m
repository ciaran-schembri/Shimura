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

s`ShimLabel := "10.13-[1,26]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  13;
s`ShimAtkinLehner :=  [ 1, 26 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-53*x^6 + 50*x^5 - 172*x^4 + 100*x^3 - 172*x^2 + 50*x - 53,Rx!0]);

return s;

