AttachSpec("spec");
SetDebugOnError(true);
SetProfile(true);


for i in [1..#GYList()] do
  if i gt 43 then
    item:=GYList()[i];
    disc:=item[1];
    level:=item[2];
    if [disc,level] notin [[82,1],[119,1],[159,1],[194,1],[206,1],[10,23],[39,2]] then
      hyp_inv:=GYData(disc,level)[5];
      for W in AllAtkinLehners(disc,level) do
        if hyp_inv in W then
          printf "%o %o %o\n", disc,level,W;
          C:=ShimuraCurveQuotient(disc,level,W);
          //printf "Genus = %o\n", Genus(C);
          C;
        end if;
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
  FP:=Read(file);
  attr:=eval FP;
  if attr`ShimAtkinLehner ne [1] then
  //new_attributes:= [ <"ShimRationalPoints","\"{}\"">, <"ShimTest", "\"NA\""> ];
    X:=attr`ShimModel;
    ShimRationalPoints, ShimPointsProvedCorrect, ShimPointsNotes := RationalPointsAnyGenus(X);
    ShimPointsEverywhereLocally:= HasAdelicPointsAnyGenus(X);
    if Type(ShimRationalPoints) eq SetEnum then
      points:=Set([ Eltseq(P) : P in ShimRationalPoints]);
    else
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

points_unkown:=[];
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
    Append(~points_unkown, filename);
  end if;

end for;




/* Hasse_violations:=

[ Shim-X(119,1)-g4-[1,7].m, Shim-X(39,2)-g3-[1,78].m,

Shim-X(6,29)-g2-[1,6].m, Shim-X(6,37)-g2-[1,3].m, Shim-X(87,1)-g2-[1,3].m,
Shim-X(93,1)-g3-[1,3].m ];

points_unkown:=
[ Shim-X(10,11)-g3-[1,55].m, Shim-X(10,19)-g2-[1,190].m,
Shim-X(10,19)-g3-[1,95].m, Shim-X(119,1)-g5-[1,17].m, Shim-X(134,1)-g3-[1,2].m,
Shim-X(134,1)-g3-[1,67].m, Shim-X(14,5)-g1-[1,5].m, Shim-X(159,1)-g5-[1,53].m,
Shim-X(206,1)-g5-[1,103].m, Shim-X(22,5)-g3-[1,10].m, Shim-X(22,5)-g3-[1,55].m,

Shim-X(26,3)-g3-[1,39].m, Shim-X(39,2)-g3-[1,6].m, Shim-X(6,29)-g3-[1,87].m,

Shim-X(6,31)-g3-[1,62].m, Shim-X(6,37)-g3-[1,111].m, Shim-X(6,37)-g3-[1,74].m,
Shim-X(87,1)-g3-[1,29].m, Shim-X(93,1)-g2-[1,93].m ];*/
