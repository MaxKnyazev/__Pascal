Program Z25ege022;
var
  n, s, x1, x2, x3 : integer;
begin
  s:=0;
  n:=0;
  write('Ââåäèòå ïåğâîå ÷èñëî=');readln(x1);
  write('Ââåäèòå âòîğîå ÷èñëî=');readln(x2);
  repeat
     write('Ââåäèòå ñëåäóşùåå ÷èñëî=');readln(x3);
     s:=x1+x2+x3;
     if (s mod 2=0)and(s>=-40)and(s<=-20)then n:=n+1;
     x1:=x2;
     x2:=x3;
  until x3=0;
  if n=0 then writeln('Èñêîìûå ïàğû íå íàéäåíû!')
         else writeln('Êîëè÷åñòâî èñêîìûõ ïàğ =',n)
end.