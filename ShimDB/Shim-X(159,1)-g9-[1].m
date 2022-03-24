A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "159.1-[1]";

s`ShimDiscriminant :=  159;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-177147*x^20 - 1132218*x^18 - 4367079*x^16 - 8888824*x^14 - 6650118*x^12 + 
1211556*x^10 + 113578*x^8 - 32376*x^6 - 447*x^4 + 134*x^2 - y^2 - 3
]);
s`ShimGenus :=  9;

return s;
