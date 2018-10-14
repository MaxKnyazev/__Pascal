Program Z25ege017;
  const
  N=5;
var
  a: array [1..N] of integer;
  i, k : integer;
begin
  k:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N-2 do
    if (a[i+1]+a[i+2])/2=a[i] then
      k:=k+1;
  writeln('Результат =',k)
end.