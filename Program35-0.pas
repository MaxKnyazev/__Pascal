program MAX35;
var
  p1,p2,p3,polov1,polov2,chislo:integer;
begin
  p1:=0;
  p2:=0;
  write('введите число=');
  read(chislo);
  polov1:=chislo div 1000;
  polov2:=chislo mod 1000;

  p1:=p1+polov1 div 100;
  p2:=polov1 mod 100;
  p1:=p1+p2 mod 10;
  p1:=p1+p2 div 10;

  p2:=0;
  p2:=p2+polov2 div 100;
  p3:=polov2 mod 100;
  p2:=p2+p3 mod 10;
  p2:=p2+p3 div 10;

  if p1=p2 then writeln('билет счастливый :',p1,' = ',p2)
           else writeln('билет обыкновенный');
end.
