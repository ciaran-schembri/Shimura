A3<x1,y1,z1> := AffineSpace(Rationals(),3);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "57.1-[1]";

s`ShimDiscriminant :=  57;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A3,[
9*x1^4 + 36*x1^3 + 62*x1^2 + 20*x1 - y1^2 + 1,
-4*x1^2 + 2*x1 - z1^2 - 1
]);
s`ShimGenus :=  3;

return s;
