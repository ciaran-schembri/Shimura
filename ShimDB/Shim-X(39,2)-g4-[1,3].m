Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "39.2-[1,3]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-4*x^10 - 26*x^9 - 101*x^8 - 240*x^7 - 
470*x^6 - 655*x^5 - 796*x^4 - 688*x^3 - 524*x^2 - 240*x - 96,Rx!x^5 + x^4 + 
x^3]);

return s;

