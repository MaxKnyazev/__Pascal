Program Z25ege013;
const
  N=5;
var
  a: array [1..N] of integer;
  i, s: integer;
begin
  s:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
    if (a[i]>=10)and(a[i]<=99) then
      if a[i] div 10>a[i] mod 10 then
        s:=s+1;
  writeln('Результат =',s)
end.
