AttachSpec("spec");
SetDebugOnError(true);
SetProfile(true);


for i in [1..#GYList()] do
    item:=GYList()[i];
    disc:=item[1];
    level:=item[2];
    if disc eq 39 and level eq 2 then
    if ShimuraCurveQuotientData(disc,level,[1])`ShimGenus ge 2 then
      for W in AllAtkinLehners(disc,level) do
          if W ne [1,6,13,78] then
          printf "%o %o %o\n", disc,level,W;
          MakeShimDBObject(disc,level,W);
          attr:=ShimDBRecord(disc,level,W);
        end if;
          //C:=ShimuraCurveQuotient(disc,level,W);
          //printf "Genus = %o\n", Genus(C);
          //DefiningEquations(C);
      end for;
    end if;
  end if;
end for;

ProfilePrintByTotalTime(:Max:=20);


command := Sprintf("ls %o", "ShimDB");
ls := Pipe(command, "");
filenames := Split(ls, "\n");

for filename in filenames do
  file:=Sprintf("ShimDB/%o",filename);
  file;
  FP:=Read(file);
  attr:=eval FP;
  if attr`ShimAtkinLehner ne [1] then
  //new_attributes:= [ <"ShimRationalPoints","\"{}\"">, <"ShimTest", "\"NA\""> ];
    X:=attr`ShimModel;
    ShimRationalPoints, ShimPointsProvedCorrect, ShimPointsNotes := RationalPointsAnyGenus(X);
    ShimPointsEverywhereLocally:= HasAdelicPointsAnyGenus(X);
    if Type(ShimRationalPoints) eq SetEnum then
      points:=Set([ Eltseq(P) : P in ShimRationalPoints]);
    elif Type(ShimRationalPoints) eq MonStgElt then
      points:=Sprintf("\"%o\"",ShimRationalPoints);
    else
      assert Type(ShimRationalPoints) eq BoolElt;
      assert Genus(X) eq 0;
      points:=ShimRationalPoints;
    end if;

    //if Genus(X) ge 2 then
      //ShimRationalPoints:= Sprintf("s`ShimModel!%o", ShimRationalPoints);
    new_attributes:=
    [
    <"ShimRationalPoints", Sprint(points)>,
    <"ShimPointsProvedCorrect", Sprint(ShimPointsProvedCorrect)>,
    <"ShimPointsNotes", Sprintf("\"%o\"",ShimPointsNotes)>,
    <"ShimPointsEverywhereLocally", Sprint(ShimPointsEverywhereLocally)>
    ];
    ShimAddAttributes(filename, new_attributes);
  end if;
end for;



command := Sprintf("ls %o", "ShimDB-v2");
ls := Pipe(command, "");
filenames := Split(ls, "\n");

points_unproven:=[];
Hasse_violations:=[];
for filename in filenames do
  file:=Sprintf("ShimDB-v2/%o",filename);
  filename;
  FP:=Read(file);
  attr:=eval FP;
  if attr`ShimGenus ne 0 and Type(attr`ShimRationalPoints) eq SetEnum
    and attr`ShimRationalPoints eq {} and attr`ShimPointsEverywhereLocally then
      Append(~Hasse_violations, filename);
  end if;

  if attr`ShimPointsProvedCorrect eq false then
    Append(~points_unproven, filename);
  end if;

end for;

points_unproven;
Hasse_violations;





/* Hasse_violations:=

[ Shim-X(119,1)-g4-[1,7].m, Shim-X(14,5)-g1-[1,5].m, Shim-X(39,2)-g3-[1,78].m, Shim-X(6,29)-g2-[1,6].m, Shim-X(6,37)-g2-[1,3].m, Shim-X(87,1)-g2-[1,3].m, Shim-X(93,1)-g3-[1,3].m ]

points_unproven:=
[ Shim-X(10,19)-g2-[1,190].m, Shim-X(10,23)-g3-[1,2,23,46].m, Shim-X(119,1)-g5-[1,17].m, Shim-X(134,1)-g3-[1,2].m, Shim-X(134,1)-g3-[1,67].m, Shim-X(159,1)-g5-[1,53].m, Shim-X(206,1)-g5-[1,103].m, Shim-X(87,1)-g3-[1,29].m, Shim-X(93,1)-g2-[1,93].m ]*/
