program MAX51;
var
  chislo,max,min,i,k:integer;
begin
  max:=0;
  min:=30000;
  repeat
    write('������� �����=');
    read(chislo);
    if chislo<>0 then
      begin
        if chislo<min then min:=chislo;
        if chislo>max then max:=chislo;
      end
  until chislo=0;
  if (min=30000)and(max=0)then writeln('���������= 0')
                          else writeln('���������=',max-min)
end.

