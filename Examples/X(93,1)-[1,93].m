AttachSpec("spec");



s:=ShimuraCurveQuotientData(93,1,[1,93]);

points:=RationalPointsAnyGenus(s`ShimModel);

for i in [1..#points] do
  P:=Setseq(points)[i];
  quotient_points:={P};

  proj:=s`ShimProjectionEquations;
  //Pullback(proj,P);
  XPScheme:=Difference(Pullback(proj,P), BaseScheme(proj));
  Pbar,Kinit:=PointsOverSplittingField(XPScheme);
  Pbar;

end for;


P:=Setseq(points)[1];

PPproj:=ProjectiveClosure(s`ShimProjectionEquations);
PPD:=Domain(PPproj);
PPC:=Codomain(PPproj);
//Pullback(proj,P);
XPScheme:=Difference(Pullback(PPproj,P), BaseScheme(PPproj));
Pbar,Kinit:=PointsOverSplittingField(XPScheme);
Pbar;

pull:=Pullback(PPproj,P);
PointsOverSplittingField(pull);

> time exproj := Extend(proj);
Time: 4.390
> Degree(BaseScheme(exproj));
0
> Dimension(BaseScheme(exproj));
-1
> aaa := Pullback(exproj,P)
> PointsOverSplittingField(aaa);
{@ @}
