Program MatchModel022;
const N=4;
var
  a: array [1..N] of integer;
  i, min, indexmin : integer;
begin
  indexmin:=1;
  writeln('������� ������ = ');
  for i:=1 to N do
    readln(a[i]);
  min:=a[1];
  for i:=1 to N do
    if a[i]<max then
      begin
        min:=a[i];
        indexmin:=i
      end;
  writeln('����������� ������� = ',max,' ������ ������������ �������� = ',indexmax);
end.