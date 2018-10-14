Program MatchModel008;
var A, B, C, longAB, longAC : integer;
begin
  write('введите точку A = '); readln(A);
  write('введите точку B = '); readln(B);
  write('введите точку C = '); readln(C);
  longAB:=A-B;
  longAC:=A-C;
  if longAB < 0 then
    longAB:=longAB*(-1);
  if longAC < 0 then
    longAC:=longAC*(-1);
  if longAB > longAC then
    writeln('Точка C = ',C,'   Расстояние = ',longAC);
  if longAC > longAB then
    writeln('Точка B = ',B,'   Расстояние = ',longAB);
  if longAB = longAC then
    writeln('Обе точки равны = ',C,'   Расстояние = ',longAC)
end.