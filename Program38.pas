{
�� ���� �������� ������� ������ � ������� ���������.
������: ����� ����� ���� ���� � ������ ���� ��� ��� �����
������������� ��������.
}
program MAX38;
var
  s:string;
  summa,i,k:integer;
begin
  summa:=0;
  write('������� S=');
  read(s);
  k:=length(s);
  for i:=1 to k do
    case s[i] of
    '1','2','3','4','5','6','7','8','9','0' :summa:=summa+StrToInt(s[i])
    end;{case}
  write('���������=',summa);
end.
