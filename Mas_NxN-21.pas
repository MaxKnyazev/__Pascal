{
  ���� ������������� ������� A[1:10]. ��������� ���.���. B[1:10],�������
  �������� �� �� �����, ��� � ������� A, �� � ������� ��� �������������
  �������� ������������ ���� ��������������
}
Program Mas_NxN_20;

const N = 5;
      CM : array[1..N]of integer = ( 1, 1, 1,-1, 2);
      MC : array[1..N]of integer = ( 2, 2,-1, 3,-1);
var
  a, b : array[1..N]of integer;
  i : integer;

function AA(c : array[1..N] of integer) : integer;
var k : integer;

begin
  k:=1;
  for i:=1 to N do
    if c[i]<0 then
      begin
        b[k]:=c[i];
        k:=k+1
      end;
  for i:=1 to N do
    if c[i]>=0 then
      begin
        b[k]:=c[i];
        k:=k+1
      end
end;

begin
  a:=CM;
  AA(a);
  for i:=1 to N do
    writeln('��������� = ',b[i]);
end.