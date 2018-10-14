program MAX32;
var
  s1,summa,chislo:integer;
begin
     summa:=0;
     write('введите chislo=');
     read(chislo);
     s1:=chislo div 100;
     chislo:=chislo mod 100;
     summa:=summa+s1;
     s1:=chislo div 10;
     chislo:=chislo mod 10;
     summa:=summa+s1+chislo;
     write(summa)
end.