{
  ���� ������������� ������� A[1:10]. ���������, ���� �� � ��� ��������,
  ������ 0.
  ���� ����, �� ������� ����� ������� �� ���, �� ���� ���������� i, ���
  ������� A[i]=0.
  ���� ��� - ������� ����� "���".
}
Program Mas_NxN_12;

const N = 5;

var
  i : integer;
  flag : boolean;
  a : array[1..N]of integer;
  
function AA : integer;

 begin
  flag:=false;

  for i:=1 to N do
    if a[i]=0 then
      begin
        flag:=true;
        break;
      end;
  AA:=i
 end;

begin
  writeln('������� ������ :');
  for i:=1 to N do
    readln(a[i]);
  AA;
  if flag then
    writeln('��������� = ',AA)
  else
    writeln('���')
end.