Program Mas_NxN_27;
var N, i : integer;

function AA(a : integer): integer;
begin
  writeln('Купюр ',a,'-ой денежной достойности = ',N div a);
  if N>=a then
    N:=N mod a
end;

begin
  write('Введите число = '); readln(N);
  i:=64;
  repeat
    AA(i);
    i:=i div 2
  until i=1;
end.
