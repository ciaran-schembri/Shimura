
AttachSpec("spec");
D:=39;
N:=2;
W:=[1,6,26,39];

curve_data:=GYData(D,N);
Cpols:=curve_data[3];
list:=curve_data[4];

A2<x,y>:=AffineSpace(Rationals(),2);
A3<x1,y1,z1> := AffineSpace(Rationals(),3);

hyp_inv:=curve_data[5];

if #Cpols eq 1 then //differentiates hyperelliptic from non-hyperelliptic
	C:=Curve(A2,Cpols);
	R<x> := PolynomialRing(Rationals());
	ff := R!Evaluate(Cpols[1],[x,0]);
	C:=HyperellipticCurve(ff);
	assert PrimeDivisors(Integers()!Discriminant(C)) subset [2] cat PrimeDivisors(curve_data[1]*curve_data[2]);
else
	C:=Curve(A3,Cpols);
end if;

automorphisms:=FullAutomorphismListFromData(D,N);

wd:= [ a[2] : a in automorphisms | a[1] eq W ][1];

for w in wd do
	G2:=AutomorphismGroup(C,[w[2]]);
  Cquo_init,proj_init:=CurveQuotient(G2);
	new_auts:=Automorphisms(Cquo_init);
	for
	G3:=AutomorphismGroup(Cquo_init,[new_auts]);
end for;
