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

s`ShimLabel := "10.23-[1,2,5,10,23,46,115,230]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 2, 5, 10, 23, 46, 115, 230 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

return s;

