Program Z25ege012;
const
  N=5;
var
  a: array [1..N] of integer;
  i, x, y: integer;
  s: real;
begin
  s:=0;
  x:=0;
  y:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
    if (a[i]=4)or(a[i]=5)then
      begin
        x:=x+a[i];
        y:=y+1
      end;
  s:=x/y;
  writeln('Результат =',s)
end.
