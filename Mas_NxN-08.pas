const N = 4;
      Mas : array[1..N] of integer = (1,2,3,4);
var   i, res : integer;
      a : array[1..N] of integer;

function FSecond:integer;
begin
  res:=0;
  for i:=1 to N do
    if a[i] mod 2<>0 then
      res:=res+a[i];
  FSecond:=res;
end;

function FFirst:integer;
begin
  res:=0;
  for i:=1 to N do
    if a[i] mod 2=0 then
      res:=res+a[i];
  FFirst:=res
end;

procedure PSecond;
begin
  writeln('Сумма нечётных = ',FSecond)
end;

procedure PFirst;
begin
  writeln('Сумма чётных = ',FFirst)
end;

begin
  a:=Mas;
  FFirst;
  FSecond;
  PSecond;
  PFirst
end.