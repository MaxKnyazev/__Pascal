Program Z25ege026;
var
 elemSaFirst, elemSaSecond, elemSaThird, elemMaFirst, elemMaSecond, elemMaThird,
 elemDaFirst, elemDaSecond, elemDaThird, aLotOfThird,
 number, aLotOfFirst, iteration, aLotOfSecond : integer;
begin
  aLotOfThird:=0;
  aLotOfFirst:=0;
  aLotOfSecond:=0;
  number:=0;
  iteration:=0;
  elemSaFirst:=0;
  elemSaSecond:=0;
  elemMaFirst:=0;
  elemMaSecond:=0;
  elemDaFirst:=0;
  elemDaSecond:=0;
  repeat
     write('Введите число =');readln(number);
     iteration:=iteration+1;
     if iteration=1 then aLotOfFirst:=number;
     if iteration=2 then aLotOfSecond:=number;
     if iteration=3 then aLotOfThird:=number;
     if (iteration+3) mod 3=1
     then
       begin
         elemSaThird:=number;
         if (iteration+3)>=9 then
           begin
             if elemSaThird + elemSaSecond + elemSaFirst > aLotOfFirst then
               aLotOfFirst:=elemSaSecond + elemSaFirst + elemSaThird
           end;
         elemSaFirst:=elemSaSecond;
         elemSaSecond:=elemSaThird
       end;
     if (iteration+3) mod 3=2
     then
       begin
         elemMaThird:=number;
         if (iteration+3)>=7 then
           begin
             if elemMaThird + elemMaSecond + elemMaFirst > aLotOfSecond then
               aLotOfSecond:=elemMaSecond + elemMaFirst + elemMaThird
           end;
         elemMaFirst:=elemMaSecond;
         elemMaSecond:=elemMaThird
       end;
     if (iteration+3) mod 3=0
     then
       begin
         elemDaThird:=number;
         if (iteration+3)>=8 then
           begin
             if elemDaThird + elemDaSecond + elemDaFirst > aLotOfThird then
               aLotOfThird:=elemDaThird + elemDaSecond + elemDaFirst
           end;
         elemDaSecond:=elemDaThird;
         elemDaFirst:=elemDaSecond
       end
  until number=0;
if (aLotOfFirst>aLotOfSecond)and(aLotOfFirst>aLotOfThird)then
  writeln('Саша = ',aLotOfFirst);
if (aLotOfSecond>aLotOfFirst)and(aLotOfSecond>aLotOfThird)then
  writeln('Маша = ',aLotOfSecond);
if (aLotOfThird>aLotOfSecond)and(aLotOfThird>aLotOfFirst)then
  writeln('Даша = ',aLotOfThird);
if aLotOfFirst=aLotOfSecond then
  if aLotOfFirst>aLotOfThird then
     writeln('Саша и Маша = ',aLotOfFirst)
  else
     writeln('Даша = ',aLotOfThird);
if aLotOfThird=aLotOfSecond then
  if aLotOfSecond>aLotOfFirst then
     writeln('Даша и Маша = ',aLotOfSecond)
  else
     writeln('Саша = ',aLotOfFirst);
if aLotOfFirst=aLotOfThird then
  if aLotOfFirst>aLotOfSecond then
     writeln('Саша и Даша = ',aLotOfFirst)
  else
     writeln('Маша = ',aLotOfSecond);
if (aLotOfFirst=aLotOfSecond)and(aLotOfSecond=aLotOfThird)then
  writeln('Победила дружба = ',aLotOfFirst)
end.