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

s`ShimLabel := "26.3-[1,78]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 78 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-x^5 + 2*x^4 - 2*x^3 + 2*x^2 - x,Rx!x^3 + 
1]);

return s;

