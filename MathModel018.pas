Program MatchModel018;
const N=4;
var
  a: array [1..N] of integer;
  i : integer;
  t : boolean;
begin
  t:=true;
  writeln('введите массив = ');
  for i:=1 to N do
    readln(a[i]);
  i:=1;
  repeat
    if a[i]*a[i+1]>=0 then
      begin
        t:=false;
        break
      end;
    i:=i+1
  until i=N-1;
  writeln('Результат = ',t)
end.