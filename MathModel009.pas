// ������ �2
Program MatchModel009;
var speedFirst, speedSecond, distanceFirst, time, distance : integer;
begin
  write('������� �������� ������ ������ = '); readln(speedFirst);
  write('������� �������� ������ ������ = '); readln(speedSecond);
  write('������� ���������� ������� ���� ���������� = '); readln(distanceFirst);
  write('������� ����� ������� ������ ����� = '); readln(time);
  distance:=((speedFirst*time)+(speedSecond*time))-distanceFirst;
  if distance < 0 then
  write('��������� = ',distance*(-1))
                  else
  write('��������� = ',distance)
end.