{
  ���� ������������ ������� A[1:10]. ������� ���������� ��������� ���� �������,
  ������� ������ �������� ��������������� ���� � ���������
}
Program Mas_NxN_13;

const N = 5;

var
  i : integer;
  a : array[1..N]of real;
  
function AA : integer;
var
  kolvo : integer;
  summa : real;
begin
  kolvo:=0;
  summa:=0;
  for i:=1 to N do
    summa:=summa+a[i];
  for i:=1 to N do
    if a[i]>(summa/N)then
      kolvo:=kolvo+1;
  AA:=kolvo
end;

begin
  writeln('������� ������ :');
  for i:=1 to N do
    readln(a[i]);
  AA;
  writeln('��������� = ',AA)
end.