
filenames:=ShimDBFilenames();
for filename in filenames do
  //All discriminants and levels
  s:=ShimDBRead(filename);
  if s`ShimAtkinLehner eq [1] then
    print "\\hline \\hline";
    D:=s`ShimDiscriminant;
    N:=s`ShimLevel;
    if s`ShimLevel eq 1 then
      multi:=5;
    else
      multi:=16;
    end if;
    /*print "\\hline";
    printf "\\multirow{multi}{*}{%o}", D;
    print "\\multirow{multi}{*}{%o}", N;*/
  else
    D:="";
    N:="";
  end if;

  if s`ShimGenus eq 0 then
    if s`ShimRationalPoints eq true then
      pointsize := "$\\infty$";
    else
      pointsize := 0;
    end if;
  elif s`ShimGenus eq 1 then
    if Type(s`ShimRationalPoints) eq SetEnum then
      pointsize := #s`ShimRationalPoints;
    else
      pointsize := "$\\infty$";
    end if;
  else
    pointsize := #s`ShimRationalPoints;
  end if;

  AL:="$";
  for w in Exclude(s`ShimAtkinLehner,1) do
    AL:=AL cat Sprintf("\\w_{%o} ,",w);
  end for;
  AL:=AL cat "$";

  printf " %o & %o & %o & %o & %o \\\\ \n",
  D, N, AL, s`ShimGenus, pointsize;
  if s`ShimAtkinLehner eq [1] then
    print "\\hline";
  end if;

end for;




for filename in ShimDBFilenames() do
  //curves with finitely many points of level 1
  s:=ShimDBRead(filename : version:=2);
  W:=s`ShimAtkinLehner;
  if #W eq 2 then
    if s`ShimGenus ge 1 and Type(s`ShimRationalPoints) eq SetEnum
      and s`ShimRationalPoints ne {} then
      D:=s`ShimDiscriminant; N:=s`ShimLevel;
      if N eq 1 and [D,W[2]] notin [[35,5],[51,17]] then
        print "\\hline \\hline";
        cm_points:=RationalCMPoints(D,N,W[2]);
        non_cm_points:=RationalNonCMPoints(D,N,W[2]);
        assert #cm_points + #non_cm_points eq #Setseq(s`ShimRationalPoints);
        multi:=#cm_points + #non_cm_points;
        printf "\\multirow{%o}{*}{%o} \n", multi, D;
        printf "\\multirow{%o}{*}{$\\w_{%o}$} \n", multi, W[2];
        printf "\\multirow{%o}{*}{%o} \n", multi, s`ShimGenus;

        for P in non_cm_points do
          cm:="no"; disc := "";
          reps:= PointRepresentsPQMSurface(D,N,W[2],P);
          printf " & $%o$ & %o & %o & %o \\\\ \n",
          P, cm, disc, reps;
        end for;
        for P in cm_points do
          cm:="yes"; disc:= P[2]; reps:="";
          printf " & $%o$ & %o & $%o$ & %o \\\\ \n",
          P[1], cm, disc, reps;
        end for;
      end if;
    end if;
  end if;
end for;



for filename in filenames do

  attr:=ShimDBRead(filename);

  if attr`ShimGenus eq 0 then
    printf "& & $w_{%o}$ & %o & %o & %o & %o & %o & %o & $%o$ \\\\ \n",
     attr`ShimAtkinLehner, attr`ShimGenus, attr`ShimInfinitelyManyPoints, attr`ShimHasAdelicPoints,
     attr`ShimRepresentsSurface, "NA", attr`ShimCMPoints, attr`ShimEquation;
  elif attr`ShimGenus eq 1 then
    printf "& & $w_{%o}$ & %o & $\\Z^%o + %o$ & %o & %o & %o & %o & $y^2 = %o$ \\\\ \n",
    attr`ShimAtkinLehner, attr`ShimGenus, attr`ShimMordellWeil[1], attr`ShimMordellWeil[2], attr`ShimHasAdelicPoints,
    attr`ShimRepresentsSurface, "NA", attr`ShimCMPoints, attr`ShimEquation;
  else
    printf "& & $w_{%o}$ & %o & %o & %o & %o & %o %o & %o & $y^2 = %o$ \\\\ \n",
    attr`ShimAtkinLehner, attr`ShimGenus, attr`ShimAnalyticRank, attr`ShimHasAdelicPoints,
    attr`ShimRepresentsSurface, attr`ShimChabauty, attr`ShimPointSearch, attr`CMpoints, attr`ShimEquation;
  end if;
end for;



command := Sprintf("ls %o", "ShimDB");
ls := Pipe(command, "");
filenames := Split(ls, "\n");

atkinlehners:= [ eval Split(Split(file,"w")[2],">")[1] : file in filenames ];
ParallelSort(~atkinlehners, ~filenames);

for filename in filenames do
  file:=Sprintf("ShimDB/%o",filename);
  FP:=Read(file);
  attr:=eval FP;
  if attr`ShimGenus gt 1 and "s`ShimAtkinLehner" in FP then
    if attr`ShimHasAdelicPoints eq true then
      printf "& & $w_{%o}$ & %o & %o & %o & %o & %o %o & %o & $y^2 = %o$ \\\\ \n",
      attr`ShimAtkinLehner, attr`ShimGenus, attr`ShimAnalyticRank, attr`ShimHasAdelicPoints,
    attr`ShimRepresentsSurface, attr`ShimChabauty, attr`ShimPointSearch, attr`CMpoints, attr`ShimEquation;
  end if;
  end if;

end for;







Pipe("ls ShimDB", "");
filenames:= [ "../../Dropbox (Dartmouth College)/Shimura-Chabauty/code/%o"]
Sprintf("ls ../../Dropbox (Dartmouth College)/Shimura-Chabauty/code/%o", "ShimDatabase");

lst:=Pipe("ls ShimDB", "");

  load "dir";
load "../../Dropbox (Dartmouth College)/Shimura-Chabauty/code/ShimDatabase/Shim-X(26,1)-<w2>-g1.m";
  Open(filename);
  if s`ShimGenus eq 0 then
    printf "& & $w_{%o}$ & %o & %o & %o & %o & %o & %o & $%o$ \\\\ \n",
     s`ShimAtkinLehner, s`ShimGenus, s`ShimInfinitelyManyPoints, s`ShimHasAdelicPoints,
     s`ShimRepresentsSurface, "NA", s`ShimCMPoints, s`ShimEquation;
  elif s`ShimGenus eq 1 then
    printf "& & $w_{%o}$ & %o & $\\Z^%o + %o$ & %o & %o & %o & %o & $y^2 = %o$ \\\\ \n",
    s`ShimAtkinLehner, s`ShimGenus, s`MordellWeil[1], s`MordellWeil[2], s`ShimHasAdelicPoints,
    s`ShimRepresentsSurface, "NA", s`ShimCMPoints, s`ShimEquation;
  else
    printf "& & $w_{%o}$ & %o & %o & %o & %o & %o %o & %o & $y^2 = %o$ \\\\ \n",
    s`ShimAtkinLehner, s`ShimGenus, s`ShimRankBounds, s`ShimHasAdelicPoints,
    s`ShimRepresentsSurface, s`ShimChabauty, s`ShimPointSearch, s`CMpoints, s`ShimEquation;
  end if;


Open("../../Dropbox (Dartmouth College)/Shimura-Chabauty/code/ShimDatabase/Shim-X(26,1)-<w2>-g1.m",p);
