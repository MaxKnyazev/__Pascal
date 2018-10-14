Program MatchModel033;
const N=33;
var
  a : array [1..N] of integer;
  i : integer;
//  i, temp, perFirst, perSecond : integer;
begin
  a[1]:=1;
  a[2]:=1;
  if N<3 then
    writeln('Результат = 1')
  else
    for i:=3 to N do
      a[i]:=a[i-2]+a[i-1];
{
  perFirst:=1;
  perSecond:=1;
  temp:=0;
  for i:=3 to N do
    begin
      temp:=perSecond;
      perSecond:=perFirst+perSecond;
      perFirst:=temp
    end;
  writeln('Результат = ',perSecond)
}
  if N>2 then
    writeln('Результат = ',a[N]);
end.