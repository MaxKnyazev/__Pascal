Program MatchModel020;
const N=4;
var
  a: array [1..N] of integer;
  i : integer;
begin
  writeln('введите массив = ');
  for i:=1 to N do
    readln(a[i]);
  writeln('Результат = ');
  for i:=N downto 1 do
    writeln(a[i]);
end.