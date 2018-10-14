Program Z25ege008;
const
  N=5;
var
  a: array [1..N] of integer;
  i: integer;
  k, max, min: real;
begin
  k:=0;
  for i:=1 to N do
    readln(a[i]);
  min:=a[1];
  max:=a[1];
  for i:=1 to N do
    begin
    if a[i]<min then min:=a[i];
    if a[i]>max then max:=a[i];
    end;
//  writeln('Сред. ариф. мин. и макс. =',(max+min)/2);
  for i:=1 to N do
    k:=k+a[i];
  k:=k/N;
//  writeln('Сред. ариф. всех элементов =',k);
  writeln('Разность =',((max+min)/2)-k)
end.
