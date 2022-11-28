

intrinsic RankAnyGenus(X::.) -> RngIntElt
  {Compute the rank of the Jacobian of any genus curve}
  if Genus(X) ge 2 then
    J:=Jacobian(X);
    //s`ShimDiscriminant; s`ShimLevel; s`ShimAtkinLehner;
    l,u:=RankBounds(J);
    assert l eq u;
    return u;
  elif Genus(X) eq 1 then
      rank:=Rank(Jacobian(X));
      return rank;
  elif Genus(X) eq 0 then
      return 0;
  end if;
end intrinsic;



intrinsic ShimRank(disc::RngIntElt) -> RngIntElt
  {for X(D,1) compute the rank of the Jacobian}
  discriminants := Sort(Setseq(Set([ ShimDBRead(filename)`ShimDiscriminant : filename in ShimDBFilenames() ])));
  top_rank:=0;
  for filename in ShimDBFilenames() do
    s:=ShimDBRead(filename : version:=2);
    if s`ShimDiscriminant eq disc and s`ShimAtkinLehner ne [1]
       and s`ShimLevel eq 1 and #s`ShimAtkinLehner eq 2 then
      //disc;
      //s`ShimModel;
      top_rank+:= RankAnyGenus(s`ShimModel);
    end if;
  end for;
  return top_rank;
end intrinsic;


/*
for list in GYList() do
  D:=list[1];
  N:=list[2];
  if N eq 1 then
    if list[1] ge 26 and list[1] notin [95,111,146,194,206] and list[2] eq 1 then
      vars:=#Names(Parent(list[3,1]));
      s:=ShimDBRecord(list[1],1,[1]);
      if vars eq 2 then
        printf "< %o, %o, %o, Curve(A2,%o) >, \n", list[1], s`ShimGenus, ShimRank(list[1]), list[3];
      elif vars eq 3 then
        printf "< %o, %o, %o, Curve(A3,%o) >, \n", list[1], s`ShimGenus, ShimRank(list[1]), list[3];
      end if;
    end if;
  end if;
end for;
*/
