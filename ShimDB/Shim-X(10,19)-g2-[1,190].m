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

s`ShimLabel := "10.19-[1,190]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 190 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!x^6 - 3*x^5 + x^4 + 2*x^3 - 3*x,Rx!x^2 + x
+ 1]);

return s;

