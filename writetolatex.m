
filenames:=ShimDBFilenames();
for filename in filenames do
  //create a table in latex of all Shimura curve quotients,
  //their genus and the number of points from the database
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
    pointsize:=0;
    printf " %o & %o & %o &  & %o \\\\ \n",
    D, N, s`ShimGenus, pointsize;
    /*print "\\hline";
    printf "\\multirow{multi}{*}{%o}", D;
    print "\\multirow{multi}{*}{%o}", N;*/
  else
    D:="";
    N:="";
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
    for w in AtkinLehnerGenerators(s`ShimAtkinLehner) do
      AL:=AL cat Sprintf("\\w_{%o},",w);
    end for;
    Prune(~AL);
    AL:=AL cat "$";

    printf " %o & %o & %o & %o & %o \\\\ \n",
    D, N, s`ShimGenus, AL, pointsize;
    if s`ShimAtkinLehner eq [1] then
      print "\\hline";
    end if;
  end if;

end for;


DN:=Setseq({[ShimDBRead(filename)`ShimDiscriminant, ShimDBRead(filename)`ShimLevel] : filename in ShimDBFilenames() });
DBsize:=0;
for A in DN do
  if A[2] eq 1 then
    DBsize:=DBsize+5;
  else
    DBsize:=DBsize+16;
  end if;
end for;

assert #ShimDBFilenames() eq DBsize;

gy:=[ [A[1],A[2]] : A in GYList() | [A[1],A[2]] notin [[6,1],[10,1],[22,1],[14,1],[15,1],[21,1],[33,1],[34,1],[46,1]] ];
#gy;
//gy are the X(D,1) not of genus 0 or 1
//should be equal to the database
[ A : A in gy | A notin DN ];
assert Set(gy) eq Set(DN);

for filename in ShimDBFilenames() do
  //create a table in latex of the Shimura curve quotients of
  //level 1 with finitely many points, including the equation,
  // the rational points and whether they are CM
  s:=ShimDBRead(filename : version:=2);
  W:=s`ShimAtkinLehner;
  if #W eq 2 then
    if s`ShimGenus ge 1 and Type(s`ShimRationalPoints) eq SetEnum
      and s`ShimRationalPoints ne {} then
      D:=s`ShimDiscriminant; N:=s`ShimLevel;
      if N eq 1 and [D,W[2]] in [[35,5],[51,17]] then
        //print "\\hline \\hline";
        cm_points:=RationalCMPoints(D,N,W[2]);
        non_cm_points:=RationalNonCMPoints(D,N,W[2]);
        points:=Setseq(s`ShimRationalPoints);
        assert #cm_points + #non_cm_points eq #points;
        multi:=#cm_points + #non_cm_points;

        X:=s`ShimModel;
        if s`ShimGenus eq 1 then
          pt:=X!Setseq(s`ShimRationalPoints)[1];
          E,m1:=EllipticCurve(X,pt);
          Ered,m2:=MinimalModel(E);
          m:=m1*m2;
        else
          Ered,m:=ReducedModel(X);
        end if;
        Xtex:=Reverse(Prune(Reverse(Split(Sprintf("%o",Ered),"b")[2])));
        Xtex:=Sprintf("$%o$", Prune(Split(Xtex,"v")[1]));
        Xtex:=ReplaceAll(Xtex,"*","");

        //printf "\\multirow{%o}{*}{%o} \n", multi, D;
        //printf "\\multirow{%o}{*}{$\\w_{%o}$} \n", multi, W[2];
        printf "%o & $\\w_{%o}$ & & & & \\\\", D, W[2];
        print " \\cline{1-2}";

        for i in [1..#cm_points] do
          P:=cm_points[i];
          PX:=X!P[1];
          mPX:=Eltseq(m(PX));
          if mPX[3] ne 0 then
            Ptex:= Sprintf("(%o,%o)", mPX[1]/mPX[3], mPX[2]/mPX[3]);
          else
            Ptex:= "\\infty";
          end if;

          cm:="yes"; disc:= P[2];
          printf "& & $%o$ & %o & $%o$ & \\\\ \n",
          Ptex, cm, disc;
        end for;

        for P in non_cm_points do
          PX:=X!P;
          mPX:=Eltseq(m(PX));
          if mPX[3] ne 0 then
            Ptex:= Sprintf("(%o,%o)", mPX[1]/mPX[3], mPX[2]/mPX[3]);
          else
            Ptex:= "\\infty";
          end if;


          cm:="no"; disc := "";
          printf "& & $%o$ & %o & %o & \\\\ \n",
          Ptex, cm, disc;
        end for;

        print "\\multicolumn{6}{c}{} \\\\";
        printf "\\multicolumn{6}{l}{%o} \\\\", Xtex;
        print "\\multicolumn{6}{c}{} \\\\";
        print " \\cline{1-5}";
      end if;
    end if;
  end if;
end for;
