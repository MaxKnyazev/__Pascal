Program MatchModel030;
const N=4;
var
  a : array [1..N] of integer;
  i, imin, min, imax, max : integer;
begin
  imin:=1;
  imax:=1;
  writeln('введите массив');
  for i:=1 to N do
    readln(a[i]);
  max:=a[1];
  min:=a[1];
  for i:=1 to N do
    if a[i]>max then
      begin
        max:=a[i];
        imax:=i
      end;
  for i:=1 to N do
    if a[i]<min then
      begin
        min:=a[i];
        imin:=i
      end;
  a[imax]:=min;
  a[imin]:=max;
  writeln('Результат = ');
  for i:=1 to N do
    writeln('--> ',a[i])
end.