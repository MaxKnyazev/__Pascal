Program MatchModel015;
const N=4;
var
  a: array [1..N] of integer;
  summa, i : integer;
begin
  summa:=0;
  writeln('введите массив = ');
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N-2 do
    summa:=summa+(a[i]*a[i+1]*a[i+2]);
  writeln('результат = ',summa)
end.