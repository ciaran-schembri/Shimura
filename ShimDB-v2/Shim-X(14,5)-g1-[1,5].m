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

s`ShimLabel := "14.5-[1,5]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
23*X^2 + 274458/1271*X*Y + 445870093/3230882*Y^2 + 75751624885/4106451022*Y*Z - 105061922739001/41754393991696*Z^2 + T^2
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -23, 180, -358, 168, -677, -168, -358, -180, -23]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 - 993/1271*x[1]^3*x[3] + 3812753/6461764*x[1]^2*x[3]^2 - 276054/1615441*x[1]*x[3]^3 + 77284/1615441*x[3]^4,
x[1]^3*x[3] + 4091/2542*x[1]^2*x[3]^2 - 715/1271*x[1]*x[3]^3 + 556/1271*x[3]^4,
x[1]^2*x[3]^2 + 4*x[1]*x[3]^3 + 4*x[3]^4,
-x[2]
] >;
s`ShimRationalPoints := {
[ -12496225/103388224, 3535/40672, -1/16, 1 ],
[ -986049/6461764, 993/2542, -1, 1 ],
[ 190969/103388224, -1311/40672, 9/16, 1 ],
[ -190969/103388224, 1311/40672, -9/16, 1 ],
[ 12496225/103388224, -3535/40672, 1/16, 1 ],
[ 986049/6461764, -993/2542, 1, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

