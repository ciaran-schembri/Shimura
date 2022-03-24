Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "6.37-[1,111]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 111 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!20*x^8 + 48*x^7 + 30*x^6 - 12*x^5 - 89*x^4
- 12*x^3 + 30*x^2 + 48*x + 20,Rx!x^2]);

return s;

