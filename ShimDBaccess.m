
command := Sprintf("ls %o", "ShimDB");
ls := Pipe(command, "");
filenames := Split(ls, "\n");

for filename in filenames do
  filename;
  file:=Sprintf("ShimDB/%o",filename);
  FP:=Read(file);
  attr:=eval FP;

  if attr`ShimGenus eq 1 then
    attr`ShimDiscriminant;
    attr`ShimLevel;
    X:=attr`ShimModel;
    XG1:=GenusOneModel(X);
    locally_sol:=IsLocallySolvable(XG1);
    locally_sol;
    if locally_sol eq true then
      Points(X : Bound:=10000);
    end if;
    print "==================";

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
