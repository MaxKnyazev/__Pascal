Program MatchModel029;
const N=8;
var
  a, b : array [1..N] of integer;
  i, j, min : integer;
  flag : boolean;
begin
  min:=100;
  writeln('введите первый массив');
  for i:=1 to N do
    readln(a[i]);
  writeln('введите второй массив');
  for i:=1 to N do
    readln(b[i]);
  for i:=1 to N do
    begin
      flag:=true;
      for j:=1 to N do
        if a[i]=b[j] then
          flag:=false;
      if flag then
        if a[i]<min then
          min:=a[i]
    end;
  writeln('Результат = ',min)
end.