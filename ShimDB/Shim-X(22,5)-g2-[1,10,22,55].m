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

s`ShimLabel := "22.5-[1,10,22,55]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 10, 22, 55 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-11*x^5 + 30*x^4 + 37*x^3 + 56*x^2 + 80*x,Rx!0]);

return s;

