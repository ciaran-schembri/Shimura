load "thelist.m";
load "functions.m";
SetDebugOnError(true);
SetProfile(true);

for item in GY_data do
  disc:=item[1];
  level:=item[2];
  if disc notin [119,159,194,206] then
    WriteShimToFile(disc,level);
  end if;
end for;

ProfilePrintByTotalTime(:Max:=20);



/*WriteShimToFile(26,1);
load "ShimDB/Shim-X(93,1)-g2-[ 1, 93 ].m";*/
