Program MatchModel014;
const N=9;
var
  a: array [1..N] of integer;
  summa, i, K : integer;
begin
  summa:=0;
  K:=N;
  writeln('введите массив = ');
  for i:=1 to N do
    readln(a[i]);
  if N mod 3=2 then K:=N-2
  else if N mod 3=1 then K:=N-1;
      i:=0;
      repeat
        summa:=summa+(a[i+1]*a[i+2]*a[i+3]);
        i:=i+3
      until i = K;
  writeln('результат = ',summa)
end.