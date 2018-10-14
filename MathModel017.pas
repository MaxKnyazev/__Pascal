Program MatchModel017;
const N=7;
var
  a: array [1..N] of integer;
  i, j, max, supermax : integer;
begin
  j:=1;
  supermax:=0;
  writeln('введите массив = ');
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
    begin
      max:=0;
      for j:=i to N do
        if a[i]=a[j] then
          max:=max+1;
      if max > supermax then supermax:=max;
    end;
  writeln('Результат = ',supermax)
end.