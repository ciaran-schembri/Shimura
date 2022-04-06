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

s`ShimLabel := "21.2-[1,14]";

s`ShimDiscriminant :=  21;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 14 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!15*x^6 + 18*x^5 + 11*x^4 - 5*x^3 + 11*x^2 
+ 18*x + 15,Rx!x^2 + x]);

return s;

