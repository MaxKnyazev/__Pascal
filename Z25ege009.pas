Program Z25ege009;
const
  N=6;
var
  a: array [1..N] of integer;
  i, k: integer;
begin
  k:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=2 to N-1 do
    if (a[i]>a[i-1])and(a[i]>a[i+1])then
      if a[i]>k then k:=a[i];
  writeln('Результат =',k)
end.
