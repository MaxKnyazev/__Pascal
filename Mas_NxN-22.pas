Program Mas_NxN_22;
var chislo, j : integer;

function AA(var a : integer) : boolean;
var i, sumDel : integer;
    flag : boolean;
begin
  sumDel:=0;
  for i:=1 to a div 2 do
    if a mod i=0 then
      sumDel:=sumDel+i;
  if a=sumDel then
    flag:=true
  else
    flag:=false;
  AA:=flag
end;

begin
{
  write('Введите число = '); readln(chislo);
  if AA(chislo) then
    writeln('Число совершенное')
  else
    writeln('Число не совершенное')
}
  for j:=2 to 10000 do
    if AA(j) then
      writeln('>>>> ',j);
  writeln('Расчёты завершены')
end.