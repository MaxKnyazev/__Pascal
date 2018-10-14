// Задача №2
Program MatchModel009;
var speedFirst, speedSecond, distanceFirst, time, distance : integer;
begin
  write('введите скорость первой машины = '); readln(speedFirst);
  write('введите скорость второй машины = '); readln(speedSecond);
  write('введите расстояние которое было изначально = '); readln(distanceFirst);
  write('введите время которое машины ехали = '); readln(time);
  distance:=((speedFirst*time)+(speedSecond*time))-distanceFirst;
  if distance < 0 then
  write('результат = ',distance*(-1))
                  else
  write('результат = ',distance)
end.