Program Z25ege011;
const
  N=5;
var
  a: array [1..N] of integer;
  i, k: integer;
begin
  k:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N-1 do
    if (A[i] mod 7<>0)or(A[i+1] mod 7<>0) then k:=k+1;
  writeln('Результат =',k)
end.
