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

s`ShimLabel := "22.5-[1,22]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 22 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-3*x^8 - 48*x^6 - 311*x^4 - 915*x^2 - 
1024,Rx!x^4 + x^2]);

return s;

