Program MatchModel019;
const N=4;
var
  a: array [1..N] of integer;
  i, temp : integer;
  vopros : char;
begin
  vopros:='y';
  writeln('введите массив = ');
  for i:=1 to N do
    readln(a[i]);
  repeat
    temp:=a[N];
    for i:=N downto 2 do
      a[i]:=a[i-1];
    a[1]:=temp;
    for i:=1 to N do
      writeln('->',a[i]);
    write('дальше? (y/n) :');
    readln(vopros)
  until vopros='n'
end.