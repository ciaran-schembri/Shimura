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

s`ShimLabel := "22.5-[1,10]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 10 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, 11, -80, 240, -362, 240, -80, 11]), Polynomial([RationalField() |])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -11, 0, -80, 0, -240, 0, -362, 0, -240, 0, -80, 0, -11]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^5,
x[1]*x[2]*x[3]^21,
-x[3]^7
] >;
s`ShimRationalPoints := {
[ 0, 0, 1 ],
[ 1, 0, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback from quotient";

s`ShimPointsEverywhereLocally := true;

return s;

