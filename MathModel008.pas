Program MatchModel008;
var A, B, C, longAB, longAC : integer;
begin
  write('������� ����� A = '); readln(A);
  write('������� ����� B = '); readln(B);
  write('������� ����� C = '); readln(C);
  longAB:=A-B;
  longAC:=A-C;
  if longAB < 0 then
    longAB:=longAB*(-1);
  if longAC < 0 then
    longAC:=longAC*(-1);
  if longAB > longAC then
    writeln('����� C = ',C,'   ���������� = ',longAC);
  if longAC > longAB then
    writeln('����� B = ',B,'   ���������� = ',longAB);
  if longAB = longAC then
    writeln('��� ����� ����� = ',C,'   ���������� = ',longAC)
end.