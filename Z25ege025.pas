Program Z25ege025;
var
 elemSaFirst, elemSaSecond, elemMaFirst, elemMaSecond,
 number, aLotOfFirst, iteration, aLotOfSecond : integer;
begin
  aLotOfFirst:=0;
  aLotOfSecond:=0;
  number:=0;
  iteration:=0;
  elemSaFirst:=0;
  elemSaSecond:=0;
  elemMaFirst:=0;
  elemMaSecond:=0;
  repeat
     write('Введите число =');readln(number);
     iteration:=iteration+1;
     if iteration=1 then aLotOfFirst:=number;
     if iteration=2 then aLotOfSecond:=number;
     if iteration mod 2<>0
     then
       begin
         elemSaSecond:=number;
         if iteration>=3 then
           begin
             if elemSaSecond + elemSaFirst > aLotOfFirst then
               aLotOfFirst:=elemSaSecond + elemSaFirst
           end;
         elemSaFirst:=elemSaSecond
       end
     else
       begin
         elemMaSecond:=number;
         if iteration>4 then
           begin
             if elemMaSecond + elemMaFirst > aLotOfSecond then
               aLotOfSecond:=elemMaSecond + elemMaFirst
           end;
         elemMaFirst:=elemMaSecond
       end
  until number=0;
  if aLotOfFirst > aLotOfSecond then writeln('Победил Саша!',aLotOfFirst);
  if aLotOfFirst < aLotOfSecond then writeln('Победила Маша!',aLotOfSecond);
  if aLotOfFirst = aLotOfSecond then writeln('Счёт равен!',aLotOfFirst);

end.