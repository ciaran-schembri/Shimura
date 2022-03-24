Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "26.3-[1,13]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 13 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!2*x^8 + 57*x^6 + 601*x^4 + 2721*x^2 + 
4394,Rx!x^3 + x]);

return s;

