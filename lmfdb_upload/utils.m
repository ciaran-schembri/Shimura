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

intrinsic ReplaceString(s::MonStgElt, fs::MonStgElt, ts::MonStgElt) -> MonStgElt
  {Return a string obtained from the string s by replacing all occurences of fs with ts.}
  i:=Position(s,fs);
  if i eq 0 then
    strg:=s;  // nothing to find
  elif (i+#fs-1) eq #s   then // if fs is at end
    strg:=Substring(s,1,i-1) cat ts;
  elif i eq 1 then // if fs is at beginning
    strg:=ts cat $$(Substring(s,i+#fs,#s-i),fs,ts);
  else
    strg:=Substring(s,1,i-1) cat ts cat $$(Substring(s,i+#fs,#s-i),fs,ts); // recursively call on tail
  end if;
  return strg;
end intrinsic;

intrinsic ReplaceString(s::MonStgElt, fs::[MonStgElt], ts::[MonStgElt]) -> MonStgElt
  {Return a string obtained from the string s by replacing all occurences of strings in fs with strings in ts.}
  //assert fs ne ts;
  for i:=1 to #fs do
    s:=ReplaceString(s,fs[i],ts[i]);
  end for;
  return s;
end intrinsic;

// procedure versions
intrinsic ReplaceString(~s::MonStgElt, fs::MonStgElt, ts::MonStgElt)
  {In the string s, replace all occurences of fs with ts.}
  s := ReplaceString(s,fs,ts);
end intrinsic;

intrinsic ReplaceString(~s::MonStgElt, fs::[MonStgElt], ts::[MonStgElt])
  {In the string s, replace all occurences of strings in fs with strings in ts.}
  for i:=1 to #fs do
    ReplaceString(~s,fs[i],ts[i]);
  end for;
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

intrinsic DiscSt(s::Rec) -> MonStgElt
  {}
  return sprint(s`ShimDiscriminant);
end intrinsic;

intrinsic LevelSt(s::Rec) -> MonStgElt
  {}
  return sprint(s`ShimLevel);
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
    CX<[X]>:=C;
    return sprint(DefiningEquations(CX));
end intrinsic;
