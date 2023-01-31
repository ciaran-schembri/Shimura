
intrinsic PointRepresentsPQMSurface(D::RngIntElt, W::SeqEnum, P::.) -> BoolElt
{Given a non-CM rational point P and projection equations proj : X->X/<W>,
find whether the point represents a PQM surface c.f. BFGR theorem 4.5}

  s:=ShimDBRecord(D,1,W);
  proj:=s`ShimProjectionEquations;
  Kpts:=PullbackPointsWithEquation(proj,[*P*]);
  assert #Kpts eq 2;
  K:=Ring(Parent(Kpts[1]));
  assert K eq Ring(Parent(Kpts[2]));

  delta:=Discriminant(K);
  assert #W eq 2 and 1 in W;
  m:=Sort(W)[2];
  B:=QuaternionAlgebra< Rationals() | delta, m >;

  if Integers()!Discriminant(B) eq D then
    return true;
  else
    return false;
  end if;
end intrinsic;


intrinsic PointsRepresentatingPQMSurface(D::RngIntElt,W::SeqEnum) -> SetEnum
  {For all of the non-CM rational points on the quotient,
  return the set of those that represent a PQM surface}

  CMpoints:=RationalCMPoints(D,1,W[2]);
  CMpoints:=[ Q[1] : Q in CMpoints ];
  s:=ShimDBRecord(D,1,W);
  proj:=s`ShimProjectionEquations;
  quotient_points:=s`ShimRationalPoints;
  list:=[];
  for P in Setseq(quotient_points) do
    if P notin CMpoints then
      if PointRepresentsPQMSurface(D,W,P) then
        Append(~list,P);
      end if;
    end if;
  end for;
  return Set(list);
end intrinsic;
