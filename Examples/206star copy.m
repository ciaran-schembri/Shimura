_<x> := PolynomialRing(Rationals());
f := -8*x^20+13*x^18+42*x^16+331*x^14+220*x^12-733*x^10-6646*x^8-19883*x^6-28840*x^4-18224*x^2-4096;

C := HyperellipticCurve(f);
BadPrimes(C);
auts := Automorphisms(C);

F<x,y> := FunctionField(C);

w2 := iso<C -> C | [-x,y,1],[-x,y,1]>;
w206 := iso<C -> C | [x,-y,1],[x,-y,1]>;
w103 := w2*w206;

D := AutomorphismGroup(C,[w2,w103]);
w206 in D;  //true, so perhaps we cannot take the quotient directly



//we want a maximal subgroup of AutomorphismGroup(C,[w2,w103]) which does not contain w206 (not unique)
max := [];
for i in [1..#auts] do
if auts[i] in D and auts[i] ne w206 and (auts[i]*w206 in max) eq false then
	max := max cat [auts[i]];
end if;
end for;


Gmax := AutomorphismGroup(C,max);
Qmax,mmax := CurveQuotient(Gmax); 
a,b,c := IsGeometricallyHyperelliptic(Qmax);

//the map
mmax*c; 








