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

s`ShimLabel := "6.11-[1,3,11,33]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 3, 11, 33 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + 12*X*Z^2 + Y*Z^2 + 81*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 166, -439, 166, 612, -166, -439, -166, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-86*x[1]^6 - 363*x[1]^5*x[3] - 258*x[1]^4*x[3]^2 - 258*x[1]^2*x[3]^4 + 363*x[1]*x[3]^5 - 86*x[3]^6,
85/2*x[1]^6 + 363/2*x[1]^5*x[3] + 255/2*x[1]^4*x[3]^2 - 363/2*x[1]^2*x[2] + 255/2*x[1]^2*x[3]^4 - 363*x[1]*x[2]*x[3] - 363/2*x[1]*x[3]^5 + 363/2*x[2]*x[3]^2 + 85/2*x[3]^6,
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

