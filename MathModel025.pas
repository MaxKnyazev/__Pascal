Program MatchModel025;
const N=4;
var
  a: array [1..N] of integer;
  i : integer;
begin
  writeln('������� ������ = ');
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
    if i mod 2=0 then
      a[i]:=a[i]*(-1);
  writeln('��������� = ');
  for i:=1 to N do
    writeln('--> ',a[i])
end.