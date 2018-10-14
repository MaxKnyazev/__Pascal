Program Z25ege023;
var
  aLotOf, sumMatch, firstNumber, secondNumber, thirdNumber, iteration : integer;
begin
  sumMatch:=0;
  aLotOf:=0;
  firstNumber:=0;
  secondNumber:=0;
  iteration:=0;
  repeat
     write('Введите следующее число=');readln(thirdNumber);
     iteration:=iteration+1;
     if iteration>=3 then
        begin
          sumMatch:=firstNumber+secondNumber+thirdNumber;
          if (sumMatch mod 2=0)and(sumMatch>=-40)and(sumMatch<=-20)then aLotOf:=aLotOf+1;
        end;
     firstNumber:=secondNumber;
     secondNumber:=thirdNumber;
  until thirdNumber=0;
  if aLotOf=0 then writeln('Искомые пары не найдены!')
         else writeln('Количество искомых пар =',aLotOf)
end.