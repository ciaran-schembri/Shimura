Rx<x>:=PolynomialRing(Rationals());
RF := recformat< 
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel,
 ShimTopCurve,
 ShimProjectionEquations,
 ShimRationalPoints,
 ShimPointsProvedCorrect,
 ShimPointsNotes,
 ShimPointsEverywhereLocally
>;
s := rec< RF | >;

s`ShimLabel := "22.3-[1,2,3,6]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + 12*X*Z^2 + Y*Z^2 + 81*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -27, 0, -308, 0, -2146, 0, -308, 0, -27]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-23/16*x[1]^6 + 327/16*x[1]^4*x[3]^2 + 327/16*x[1]^2*x[3]^4 - 23/16*x[3]^6,
7/32*x[1]^6 - 375/32*x[1]^4*x[3]^2 + 99/64*x[1]^2*x[2] - 375/32*x[1]^2*x[3]^4 - 99/64*x[2]*x[3]^2 + 7/32*x[3]^6,
x[1]^6 + 3*x[1]^4*x[3]^2 + 3*x[1]^2*x[3]^4 + x[3]^6
] >;
s`ShimRationalPoints := {
[ 19/4, -23/8, 1 ],
[ 0, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

