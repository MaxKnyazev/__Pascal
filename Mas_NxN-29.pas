Program Mas_NxN_29;

function sum100 : integer;
var i : integer;
    sum, chislo : real;
begin
  sum:=0;
  chislo:=10;
  i:=1;
  repeat
    sum:=sum+chislo;
    chislo:=chislo+(chislo/10);
    i:=i+1;
  until sum>100;
  sum100:=i
end;

function twentyKMinOneDay : integer;
var i : integer;
    chislo : real;
begin
  chislo:=10;
  i:=1;
  repeat
    chislo:=chislo+(chislo/10);
    i:=i+1;
  until chislo>20;
  twentyKMinOneDay:=i
end;

begin
  writeln('����� ',sum100,' ���� ������ �������� ����� 100 �� ��������.');
  writeln('�� ����� ��� ������ ����� ��������� ������ 20 �� ����� ',twentyKMinOneDay,' ����.')
end.
