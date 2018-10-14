Program Z25ege005;
const
  N=5;
var
  a: array [1..N] of integer;
  i, max: integer;
begin
  max:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
   if (a[i]>=10)and(a[i]<=99) then
     if a[i] mod 3<>0 then
       if a[i]>max then max:=a[i];
  if max>0 then writeln('Результат =',max)
           else writeln('Не найдено')
end.
