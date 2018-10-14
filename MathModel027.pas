Program MatchModel027;
const N=7;
var
  a : array [1..N] of integer;
  i, temp : integer;
begin
  temp:=0;
  writeln('ââåäèòå ìàññèâ = ');
  for i:=1 to N do
    readln(a[i]);
  i:=1;
  repeat
    temp:=a[i];
    a[i]:=a[i+1];
    a[i+1]:=temp;
    i:=i+2
  until (N-i=0)or(N-i=-1);
  writeln('Ğåçóëüòàò = ');
  for i:=1 to N do
    writeln('--> ',a[i])
end.