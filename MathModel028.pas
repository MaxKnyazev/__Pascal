Program MatchModel028;
const N=4;
var
  a : array [1..N] of integer;
  i, j : integer;
  flag : boolean;
begin
  flag:=true;
  writeln('������� ������ = ');
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
    for j:=1+i to N do
      if a[i]=a[j] then
        flag:=false;
  if flag then writeln('��������� ��������� ����');
  if flag=false then writeln('��������� �������� ���� ')
end.