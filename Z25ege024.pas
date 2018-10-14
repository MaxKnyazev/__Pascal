Program Z25ege024;
var
 number, aLotOfFirst, iteration, aLotOfSecond, kolvoFirst, kolvoSecond : integer;
begin
  aLotOfFirst:=0;
  aLotOfSecond:=0;
  number:=0;
  kolvoFirst:=0;
  kolvoSecond:=0;
  iteration:=0;
  repeat
     write('Введите число =');readln(number);
     iteration:=iteration+1;
     if iteration mod 2=0
     then
       begin
         kolvoFirst:=kolvoFirst+1;
         aLotOfFirst:=aLotOfFirst+number;
       end
     else
       begin
         kolvoSecond:=kolvoSecond+1;
         aLotOfSecond:=aLotOfSecond+number;
       end
  until number=0;
  if (aLotOfFirst/kolvoFirst)>(aLotOfSecond/kolvoSecond)
    then
      writeln('Победила Маша!')
    else
      writeln('Победил Саша!')
end.