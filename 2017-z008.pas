Program z008_2017;
var abonentPlat, megabaitOn, priceMegabait, spendMegabait, pay : integer;

begin
  write('������� ����������� ����� = '); readln(abonentPlat);
  write('�������� �������� = '); readln(megabaitOn);
  write('��������� �������� = '); readln(spendMegabait);
  write('������� ���� ������ ��������� = '); readln(priceMegabait);
  pay:=abonentPlat;
  if spendMegabait > megabaitOn then
    pay:=pay+((spendMegabait-megabaitOn)*priceMegabait);
  writeln('������������� ',pay,' ������');
end.