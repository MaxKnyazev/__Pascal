Program MatchModel005;

var speedRiver, speedBoat, timeFirst, timeSecond, way, rez : integer;

procedure find_way(speedRiver, speedBoat, timeFirst, timeSecond, rez : integer);
begin
  way:=0;
  way:=(timeFirst * speedBoat) + (timeSecond * (speedBoat - speedRiver));
  if way = rez then
     writeln('тест пройден : ',way,' = ', rez)
  else
     writeln('тест провален!!! : ',way,' <> ', rez)
end;

begin
//  write('¬ведите скорость течени€ реки км/ч = '); readln(speedRiver);
//  write('¬ведите скороть лодки км/ч = '); readln(speedBoat);
//  write('¬ведите врем€ пройденное лодкой в озере = '); readln(timeFirst);
//  write('¬ведите врем€ пройденное лодкой в реке = '); readln(timeSecond);

//  way:=timeFirst * speedBoat;
//  way:=way + (timeSecond * (speedBoat - speedRiver));

find_way(3, 6, 1, 1, 9);
find_way(1, 3, 2, 2, 10);
find_way(0, 1, 1, 1, 2);
end.