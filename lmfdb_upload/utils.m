// utility functions from Drew

intrinsic putrecs(filename::MonStgElt, S::SeqEnum[SeqEnum[MonStgElt]] : Delimiter:="|") -> RngIntElt
  {Given a list of lists of strings, creates a Delimiter delimited file with one list per line, returns number of records written.}
  fp := Open(filename,"w");
  n := 0;
  for r in S do Puts(fp,Join(r, Delimiter)); n+:=1; end for;
  Flush(fp);
  return n;
end intrinsic;

intrinsic strip(X::MonStgElt) -> MonStgElt
{ Strips spaces and carriage returns from string; much faster than StripWhiteSpace. }
    return Join(Split(Join(Split(X," "),""),"\n"),"");
end intrinsic;

intrinsic sprint(X::.) -> MonStgElt
{ Sprints object X with spaces and carriage returns stripped. }
    if Type(X) eq Assoc then return Join(Sort([ $$(k) cat "=" cat $$(X[k]) : k in Keys(X)]),":"); end if;
    return strip(Sprintf("%o",X));
end intrinsic;

// functions for writing ShimuraDB properties to text file
//

intrinsic ShimuraLabel(s::Rec) -> MonStgElt
  {}
  return sprint(s`ShimLabel);
end intrinsic;

intrinsic GenusSt(s::Rec) -> MonStgElt
  {}
  return sprint(s`ShimGenus);
end intrinsic;

intrinsic LevelSt(s::Rec) -> MonStgElt
  {}
  return sprint(s`ShimLevel);
end intrinsic;

intrinsic DiscSt(s::Rec) -> MonStgElt
  {}
  return sprint(s`ShimDiscriminant);
end intrinsic;

intrinsic IndexSt(s::Rec) -> MonStgElt
  {}
  return sprint(s`ShimIndex);
end intrinsic;

intrinsic AtkinLehnerSt(s::Rec) -> MonStgElt
  {}
  return sprint(s`ShimAtkinLehner);
end intrinsic;

intrinsic ModelSt(s::Rec) -> MonStgElt
  {}
  C := s`ShimModel;
  //K<nu> := BaseField(C); // will these always be defined over QQ?
  return sprint(DefiningPolynomial(C));
end intrinsic;
