Program Z25ege010;
const
  N=9;
var
  a: array [1..N] of longint;
  i, k: longint;
begin
  k:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N-1 do
    if ((a[i]+a[i+1])mod 2<>0)and((a[i]*a[i+1])<100) then k:=k+1;
  writeln('Результат =',k)
end.
