program MAX36;
{
преобразование числа x в строку s  :
 s:=IntToStr(x);
преобразование строки s в число x :
 x:=StrToInt(s);

}
var
  s:string;
  polov1,polov2:integer;
begin
  polov1:=0;
  polov2:=0;
  write('Введите S=');
  read(s);
  
  polov1:=polov1+StrToInt(s[1])+StrToInt(s[2])+StrToInt(s[3]);

  polov2:=polov2+StrToInt(s[4])+StrToInt(s[5])+StrToInt(s[6]);

  If polov1=polov2 then writeln('Билет cчастливый')
                   else writeln('Билет обычный')
end.
