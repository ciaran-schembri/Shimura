
command := Sprintf("ls %o", "ShimDB");
ls := Pipe(command, "");
filenames := Split(ls, "\n");

atkinlehners:= [ eval Split(Split(file,"w")[2],">")[1] : file in filenames ];
ParallelSort(~atkinlehners, ~filenames);

for filename in filenames do
  file:=Sprintf("ShimDB/%o",filename);
  FP:=Read(file);
  attr:=eval FP;

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
