Program Z25ege020;

var
  s, smax, x1, x2 : integer;
begin
  write('¬ведите первое число=');readln(x1);
  s:=x1;
  smax:=x1;
  repeat
     write('¬ведите следующее число=');readln(x2);
     s:=x1+x2;
     if s>smax then smax:=s;
     x1:=x2
  until x2=0;
  writeln('рез=',smax)
end.