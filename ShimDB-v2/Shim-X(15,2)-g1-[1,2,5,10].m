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

s`ShimLabel := "15.2-[1,2,5,10]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2, 5, 10 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + 10*X*Z^2 + Y*Z^2 + 10*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -48, 0, -40, 0, -11, 0, -10, 0, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
3*x[1]^8 - 22/3*x[1]^6*x[3]^2 - 577/9*x[1]^4*x[3]^4 - 88/3*x[1]^2*x[3]^6 + 48*x[3]^8,
-2*x[1]^8 - 2/3*x[1]^6*x[3]^2 + 56/3*x[1]^4*x[3]^4 - 50/3*x[1]^3*x[2]*x[3] - 8/3*x[1]^2*x[3]^6 + 100/3*x[1]*x[2]*x[3]^3 - 32*x[3]^8,
x[1]^8 + 26/3*x[1]^6*x[3]^2 + 241/9*x[1]^4*x[3]^4 + 104/3*x[1]^2*x[3]^6 + 16*x[3]^8
] >;
s`ShimRationalPoints := {
[ -2, 3, 1 ],
[ 8, -27, 1 ],
[ -13/4, 9/8, 1 ],
[ 0, 1, 0 ],
[ -2, -2, 1 ],
[ 8, 18, 1 ],
[ 3, -2, 1 ],
[ -1, 0, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

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

s`ShimLabel := "15.2-[1,2,5,10]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2, 5, 10 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + 10*X*Z^2 + Y*Z^2 + 10*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -48, 0, -40, 0, -11, 0, -10, 0, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
3*x[1]^8 - 22/3*x[1]^6*x[3]^2 - 577/9*x[1]^4*x[3]^4 - 88/3*x[1]^2*x[3]^6 + 48*x[3]^8,
-2*x[1]^8 - 2/3*x[1]^6*x[3]^2 + 56/3*x[1]^4*x[3]^4 - 50/3*x[1]^3*x[2]*x[3] - 8/3*x[1]^2*x[3]^6 + 100/3*x[1]*x[2]*x[3]^3 - 32*x[3]^8,
x[1]^8 + 26/3*x[1]^6*x[3]^2 + 241/9*x[1]^4*x[3]^4 + 104/3*x[1]^2*x[3]^6 + 16*x[3]^8
] >;
s`ShimRationalPoints := {
[ -2, 3, 1 ],
[ 8, -27, 1 ],
[ -13/4, 9/8, 1 ],
[ 0, 1, 0 ],
[ -2, -2, 1 ],
[ 8, 18, 1 ],
[ 3, -2, 1 ],
[ -1, 0, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

