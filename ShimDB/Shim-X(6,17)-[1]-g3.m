A3<x1,y1,z1> := AffineSpace(Rationals(),3);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "6.17-[1]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  17;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A3,[
17*x1^4 - 10*x1^2 - y1^2 + 9,
-3*x1^2 - z1^2 - 16
]);
s`ShimGenus :=  3;

return s;
A3<x1,y1,z1> := AffineSpace(Rationals(),3);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "6.17-[1]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  17;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A3,[
17*x1^4 - 10*x1^2 - y1^2 + 9,
-3*x1^2 - z1^2 - 16
]);
s`ShimGenus :=  3;

return s;
