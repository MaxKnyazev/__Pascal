Program MatchModel005;

var speedRiver, speedBoat, timeFirst, timeSecond, way, rez : integer;

procedure find_way(speedRiver, speedBoat, timeFirst, timeSecond, rez : integer);
begin
  way:=0;
  way:=(timeFirst * speedBoat) + (timeSecond * (speedBoat - speedRiver));
  if way = rez then
     writeln('���� ������� : ',way,' = ', rez)
  else
     writeln('���� ��������!!! : ',way,' <> ', rez)
end;

begin
//  write('������� �������� ������� ���� ��/� = '); readln(speedRiver);
//  write('������� ������� ����� ��/� = '); readln(speedBoat);
//  write('������� ����� ���������� ������ � ����� = '); readln(timeFirst);
//  write('������� ����� ���������� ������ � ���� = '); readln(timeSecond);

//  way:=timeFirst * speedBoat;
//  way:=way + (timeSecond * (speedBoat - speedRiver));

find_way(3, 6, 1, 1, 9);
find_way(1, 3, 2, 2, 10);
find_way(0, 1, 1, 1, 2);
end.