Program Mas_Nxn_33;
const NConst=5;
      aConst : array[1..NConst]of integer = (1,2,3,4,5);

var a : array[1..NConst]of integer;

procedure WriteRandom;
var rnd, n, i, t : integer;
begin
  n:=NConst;
  for i:=1 to NConst do
    begin
      rnd:=random(n)+1;
      writeln(a[rnd]);
      t:=a[rnd];
      a[rnd]:=a[n];
      a[n]:=t;
      n:=n-1
    end;


end;

begin
  a:=aConst;
  WriteRandom;
  a:=aConst;

end.