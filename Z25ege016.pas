Program Z25ege016;
const N=5;

type MassivMaxima=array [1..N] of integer;

var
    a: MassivMaxima;
    i, y, x : integer;
    s : real;
begin
  s:=0;
  y:=0;
  x:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
    if (a[i]>180)and(a[i]<=200)then
      begin
        y:=y+1;
        x:=x+a[i];
      end;
  if y=0
    then
       writeln('�� ������ �������� ������ 180 �� �������/������ ������� �������!')
    else s:=x/y;
  writeln('��������� =',s);
{� �������� ������ �������� "�������� �������
����� ��������� �������� �� 150 �� 200",
������� � ����� �������� ������ ���}
end.