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

s`ShimLabel := "6.11-[1,2,11,22]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 2, 11, 22 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 41*X*Z^2 + Y*Z^2 + 556*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 166, -439, 166, 612, -166, -439, -166, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
9*x[1]^6 + 60*x[1]^5*x[3] + 93*x[1]^4*x[3]^2 - 48*x[1]^3*x[3]^3 - 93*x[1]^2*x[3]^4 + 60*x[1]*x[3]^5 - 9*x[3]^6,
-5*x[1]^6 - 33*x[1]^5*x[3] - 51*x[1]^4*x[3]^2 + 26*x[1]^3*x[3]^3 + 3*x[1]^2*x[2] + 51*x[1]^2*x[3]^4 - 6*x[1]*x[2]*x[3] - 33*x[1]*x[3]^5 - 3*x[2]*x[3]^2 + 5*x[3]^6,
x[1]^6 + 6*x[1]^5*x[3] + 9*x[1]^4*x[3]^2 - 4*x[1]^3*x[3]^3 - 9*x[1]^2*x[3]^4 + 6*x[1]*x[3]^5 - x[3]^6
] >;
s`ShimRationalPoints := {
[ 39/4, -43/8, 1 ],
[ 0, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

