P3<X,Y,S,T> := ProjectiveSpace(Rationals(),3);
F := (3*S^3-7*S^2*T-3*S*T^2-T^3)*(3*S^3+S^2*T-3*S*T^2-9*T^3)-Y^2*T^4;
G := (-4*S^2-6*S*T-9*T^2)-X^2;
C := Curve(P3,[F,G]);
IsGeometricallyHyperelliptic(C); //true
phi := iso<C -> C | [X,-Y,S,T],[X,-Y,S,T]>;
G := AutomorphismGroup(C,[phi]);
Q,m := CurveQuotient(G);
_,q:=IsGeometricallyHyperelliptic(C);
HasRationalPoint(q); 
K<i> := QuadraticField(-1);
HasRationalPoint(ChangeRing(q,K));

///////////////////
//119,w119
_<x> := PolynomialRing(Rationals());
f := -(7*x^10-171*x^8+758*x^6+341*x^4+4851*x^2+2401)*(x^10+3*x^8+26*x^6+278*x^4+373*x^2+343);
C := HyperellipticCurve(f);
F<x,y> := FunctionField(C);
w119 := iso<C -> C | [x,-y,1],[x,-y,1]>;
w7 := iso<C -> C | [-x,y,1],[-x,y,1]>;
G := AutomorphismGroup(C,[w119,w7]);
Q,m := CurveQuotient(G);

///////////
A2<x,y> := AffineSpace(Rationals(),2);
f := -(7*x^10-171*x^8+758*x^6+341*x^4+4851*x^2+2401)*(x^10+3*x^8+26*x^6+278*x^4+373*x^2+343)-y;
C := Curve(A2,[f]);
Genus(C);
HasRationalPoint(Conic(ProjectiveClosure(C)));

//159,194,206

//159
/*
_<x> := PolynomialRing(Rationals());
f := -(81*x^10+207*x^8+874*x^6-130*x^4-11*x^2+3)*(2187*x^10+8389*x^8+8878*x^6+42*x^4-41*x^2+1);
C := HyperellipticCurve(f);
F<x,y> := FunctionField(C);
w159 := iso<C -> C | [x,-y,1],[x,-y,1]>;
w3 := iso<C -> C | [-x,y,1],[-x,y,1]>;
G := AutomorphismGroup(C,[w159]);
G := AutomorphismGroup(C,[w3]);
Q,m := CurveQuotient(G); //fails

*/

_<x> := PolynomialRing(Rationals());
f := -(7*x^10-171*x^8+758*x^6+341*x^4+4851*x^2+2401)*(x^10+3*x^8+26*x^6+278*x^4+373*x^2+343);
coeffs := Coefficients(f);
newCoeffs := [c : c in coeffs | c ne 0 ];
g := Polynomial(newCoeffs);
assert f eq Evaluate(g,x^2);


A2<x,y> := AffineSpace(Rationals(),2);
f := Evaluate(f,x);
C1 := Curve(A2,[f-y]);
Genus(C1);
HasRationalPoint(Conic(ProjectiveClosure(C1)));

g := Evaluate(g,x);
C2 := Curve(A2,[g-y]);
Genus(C2);
HasRationalPoint(Conic(ProjectiveClosure(C2)));



C3 := Curve(A2,[g-y^2]);
Genus(C3);//4

//206 is exactly like 159

//194 is more difficult

//try fixed field??

//is there a problem at (6,11)?


/////////////////
_<x> := PolynomialRing(Rationals());
f := -8*x^20+13*x^18+42*x^16+331*x^14+220*x^12-733*x^10-6646*x^8-19883*x^6-28840*x^4-18224*x^2-4096;
C := HyperellipticCurve(f);
F<x,y> := FunctionField(C);
w206 := iso<C -> C | [x,-y,1],[x,-y,1]>;
w2 := iso<C -> C | [-x,y,1],[-x,y,1]>;
w103 := iso<C -> C | [-x,-y,1],[-x,-y,1]>;

G206 := AutomorphismGroup(C,[w206]);
Q206,m206 := CurveQuotient(G206);

G2 := AutomorphismGroup(C,[w2]);
Q2,m2 := CurveQuotient(G2);

G103 := AutomorphismGroup(C,[w103]);
Q103,m103 := CurveQuotient(G103);

//////////////////
_<x> := PolynomialRing(Rationals());
f := -(x^8+x^7-x^6-4*x^5+x^4+4*x^3-x^2-x+1)*(7*x^8+19*x^7+21*x^6-13*x^4+21*x^2-19*x+7);
C := HyperellipticCurve(f);
BadPrimes(C);
F<x,y> := FunctionField(C);
w5 := iso<C -> C | [-1/x,y/x^8,1],[-1/x,y/x^8,1]>;
w95 := iso<C -> C | [x,-y,1],[x,-y,1]>;
w19 := w5*w95;

G5 := AutomorphismGroup(C,[w5]);
Q5,m5 := CurveQuotient(G5);

G19 := AutomorphismGroup(C,[w19]);
Q19,m19 := CurveQuotient(G19);

G95 := AutomorphismGroup(C,[w95]);
//Q95,m95 := CurveQuotient(G95); //fails
//we need to use IsGeometricallyHyperelliptic
_,q := IsGeometricallyHyperelliptic(C);




