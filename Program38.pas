{
На вход прогрммы подаётся строка с разными символами.
Задача: найти сумму всех цифр с учётом того что все цифры
распологаются отдельно.
}
program MAX38;
var
  s:string;
  summa,i,k:integer;
begin
  summa:=0;
  write('Введите S=');
  read(s);
  k:=length(s);
  for i:=1 to k do
    case s[i] of
    '1','2','3','4','5','6','7','8','9','0' :summa:=summa+StrToInt(s[i])
    end;{case}
  write('Результат=',summa);
end.
