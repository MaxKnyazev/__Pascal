Program MatchModel026;
const N=4;
var
  a: array [1..N] of integer;
  i : integer;
begin
  writeln('������� ������ = ');
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
    if a[i]=0 then
      a[i]:=sqr(i);
  writeln('��������� = ');
  for i:=1 to N do
    writeln('--> ',a[i])
end.