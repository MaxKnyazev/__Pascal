Program MathModel004;
var lineQuadr, areaQuadr, areaCircle, area : real;
    go : char;
begin
  repeat
    write('Введите сторону квадрата = '); readln(lineQuadr);
    if lineQuadr > 0 then
      begin
        areaQuadr:=sqr(lineQuadr);
        areaCircle:=Pi * sqr(lineQuadr) / 4;
        area:=(areaQuadr - areaCircle) / 2;
        writeln('Результат = ',area:2:6)
      end
    else writeln('Введено неположительное число');
    write('Продолжать? (y/n):'); readln(go);
  until (go='n')or(go='N')
end.