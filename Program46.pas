program MAX46;
var
  s1,s2:string;
  flag,smes,k,i:integer;
begin
  writeln('Что делать? (1-Зашифровать,2-Расшивровать)');
  read(flag);
  smes:=0;
  s2:='';
  writeln('Введите S=');
  read(s1);
  k:=length(s1);
  if flag=1
  then
    begin
      for i:=1 to k do
        begin
          smes:=ord(s1[i]);
          smes:=smes-3;
          s2:=s2+chr(smes)
        end{for}
    end
  else
    begin
      for i:=1 to k do
        begin
          smes:=ord(s1[i]);
          smes:=smes+3;
          s2:=s2+chr(smes)
        end{for}
    end;
  writeln('Результат=',s2)
end.