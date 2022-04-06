A3<x1,y1,z1> := AffineSpace(Rationals(),3);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "10.13-[1]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  13;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A3,[
5*x1^4 - 74*x1^2 - y1^2 + 325,
-2*x1^2 - z1^2 - 25
]);
s`ShimGenus :=  3;

return s;
