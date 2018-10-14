Program MatchModel012;
var i, chislo, etalon : integer;
    flag, flag2 : boolean;
begin
  flag:=true;
  flag2:=true;
  etalon:=0;
  i:=0;
  repeat
    write('введите число = '); readln(chislo);
    if flag then
      if chislo < 0 then
        begin
          i:=1;
          etalon:=chislo;
          flag:=false //not flag
        end;
    if flag = false then
      if chislo < 0 then
        if etalon <> chislo then
          begin
            writeln('не все отрицательные равны между собой!');
            i:=2;
            break
          end
  until chislo = 0;
  if i=1 then writeln('все отрицательные равны между собой');
  if i=0 then writeln('отрицательные числа не введены!')
end.