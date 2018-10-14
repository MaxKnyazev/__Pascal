Program MatchModel023;
const N=4;
var
  a: array [1..N] of integer;
  i, j, chetchik : integer;
  flag : boolean;
begin
  chetchik:=0;
  flag:=true;
  j:=1;
  writeln('введите массив = ');
  for i:=1 to N do
    readln(a[i]);
  i:=1;
  repeat
    for j:=1 to N do
      if a[i]=a[j] then
        chetchik:=chetchik+1;
    if chetchik>1 then
      begin
        flag:=false;
        break
      end;
    chetchik:=0;
    i:=i+1
  until i=N;
  if flag then
    writeln('Все элементы различны')
  else writeln('Не все элементы различны')
end.