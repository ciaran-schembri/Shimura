Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "6.37-[1,74]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 74 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-16*x^8 + 351*x^6 - 1721*x^4 + 3153*x^2 - 
148,Rx!x^3 + x]);

return s;

