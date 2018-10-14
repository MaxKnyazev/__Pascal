Program MathModel003;
var
  chisloFirst, kolvoPerZnakov, chisloSecond, kolvoChislo : integer;
begin
  kolvoChislo:=1;
  chisloFirst:=0;
  kolvoPerZnakov:=0;
  repeat
    writeln('¬ведите число='); readln(chisloSecond);
    if chisloSecond <> 0 then
      begin
       if kolvoChislo >= 2 then
         if (chisloFirst*chisloSecond) < 0 then
           kolvoPerZnakov:=kolvoPerZnakov + 1;
       chisloFirst:=chisloSecond;
       kolvoChislo:=kolvoChislo+1;
     end
  until chisloSecond = 0;
   writeln('–езультат = ',kolvoPerZnakov)
end.
