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

s`ShimLabel := "22.3-[1,6,22,33]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 6, 22, 33 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z - 4*X*Z^2 + Y*Z^2 - 20*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -27, 0, -308, 0, -2146, 0, -308, 0, -27]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-27/64*x[1]^5*x[3] - 45/32*x[1]^3*x[3]^3 - 27/64*x[1]*x[3]^5,
27/128*x[1]^5*x[3] + 13/64*x[1]^3*x[3]^3 + 27/512*x[1]^2*x[2] + 27/128*x[1]*x[3]^5 - 27/512*x[2]*x[3]^2,
x[1]^3*x[3]^3
] >;
s`ShimRationalPoints := {
[ 6, 13, 1 ],
[ 0, 4, 1 ],
[ 0, -5, 1 ],
[ 6, -20, 1 ],
[ 0, 1, 0 ],
[ -9/4, 5/8, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

