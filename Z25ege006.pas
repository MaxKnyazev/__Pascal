Program Z25ege006;
const
  N=5;
var
  a: array [1..N] of integer;
  i, j, k: integer;
begin
  k:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N-1 do
    if ((a[i]+a[i+1]) mod 3=0)and((a[i]+a[i+1]) mod 9<>0) then
      k:=k+1;
  writeln('Результат =',k)
end.
