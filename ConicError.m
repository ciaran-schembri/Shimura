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

_<x> := PolynomialRing(Rationals());
f := -(7*x^10-171*x^8+758*x^6+341*x^4+4851*x^2+2401)*(x^10+3*x^8+26*x^6+278*x^4+373*x^2+343);
C := HyperellipticCurve(f);
F<x,y> := FunctionField(C);
phi := iso<C -> C | [x,-y,1],[x,-y,1]>;
psi := iso<C -> C | [-x,y,1],[-x,y,1]>;
G := AutomorphismGroup(C,[phi,psi]);
Q,m := CurveQuotient(G);



