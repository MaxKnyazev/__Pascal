{
��������� �������� ��������.

�������� :
������� ����� ����������� �����. ���� ��� ������ - �������� ��� �������,
���� �������� - ������� �� 3, �������� 1 � �������� �������.
�������� ��� �������� � ����� ���������� ������.
�������� ������, ��� ���������� �� ������ ������� ����� ���� ��� ������
�� ������� 1.

�������� :
���� :
20

����� (���������):
20
10
5
8
4
2
1

//***************************************    ������������� ����� :
div - ����� ����� �� �������, ��������

k:=20 div 6  -->  k=3

mod - ������� �� �������, ��������

k:=20 mod 6  -->  k=2
}

program MAX50;
var
  n:integer;
begin
  writeln('������� n=');
  read(n);
  while n<>1 do
    begin
      if n mod 2=0
      then
        n:=n div 2
      else
          n:=(n*3+1) div 2;
    writeln(n)
    end{while}
end.