Program MatchModel021;
const N=4;
var
  a: array [1..N] of integer;
  i, max, indexmax : integer;
begin
  indexmax:=1;
  writeln('введите массив = ');
  for i:=1 to N do
    readln(a[i]);
  max:=a[1];
  for i:=1 to N do
    if a[i]>max then
      begin
        max:=a[i];
        indexmax:=i
      end;
  writeln('Максимальный элемент = ',max,' Индекс максимального элемента = ',indexmax);
end.