program MAX37;
var
  s:string;
  i,k:integer;
begin
  write('Введите S=');
  read(s);
  k:=length(s);
  write('Результат=');
  for i:=1 to k do
  begin
    case s[i] of
    '1','2','3','4','5','6','7','8','9','0' :write(s[i]);
    end;{case}
  end;
end.