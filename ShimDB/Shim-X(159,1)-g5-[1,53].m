Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "159.1-[1,53]";

s`ShimDiscriminant :=  159;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 53 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Rx!3*x^11 + 25*x^10 - 46*x^9 - 483*x^8 + 
571*x^7 + 1063*x^6 - 286*x^5 - 1361*x^4 + 1221*x^3 - 437*x^2 + 73*x - 5,Rx!x^5 +
x^4 + x^3 + x^2 + 1]);

return s;

