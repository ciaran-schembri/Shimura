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

s`ShimLabel := "15.2-[1,5,6,30]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 5, 6, 30 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + 5*X*Z^2 + Y*Z^2 - 2*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -48, 0, -40, 0, -11, 0, -10, 0, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
3/4*x[1]^6 + 23/4*x[1]^4*x[3]^2 + 23/2*x[1]^2*x[3]^4 + 6*x[3]^6,
-7/8*x[1]^6 - 47/8*x[1]^4*x[3]^2 - 47/4*x[1]^2*x[3]^4 + 5/8*x[1]*x[2]*x[3] - 7*x[3]^6,
x[1]^6 + 6*x[1]^4*x[3]^2 + 12*x[1]^2*x[3]^4 + 8*x[3]^6
] >;
s`ShimRationalPoints := {
[ 0, -2, 1 ],
[ 1, -1, 1 ],
[ -3, 1, 1 ],
[ 0, 1, 1 ],
[ 3/4, -7/8, 1 ],
[ 0, 1, 0 ],
[ 2, 1, 1 ],
[ 2, -4, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

