Program MatchModel011;
const N=7;
var a : array [1..N] of integer;
    i : integer;
begin
  writeln('ввод данных = ');
  for i:=1 to N do readln(a[i]);
  if a[1]=a[N]then
    for i:=2 to N-1 do
      if a[i]<>a[1]then
        writeln('результат = ',i);
  if a[1]<>a[N]then
    begin
      if a[1]<>a[2]then
        writeln('результат = 1');
      if a[N]<>a[2]then
        writeln('результат = ',N)
    end
end.