{
  Перевод двоичного числа в десятичное
}
Program Mas_NxN_24;
var i, k, sum : integer;
    flag : boolean;
    snumber : string;

function LevelNum(a : integer) : integer;
var st, j : integer;
begin
  st:=1;
  for j:=1 to a do
    st:=2*st;
  LevelNum:=st
end;

begin
  sum:=0;
  flag:=true;
  write('Введите двоичный код (0, 1) = '); readln(snumber);
  k:=length(snumber);
  for i:=1 to k do
    if (snumber[i]<>'1')and(snumber[i]<>'0')then
      begin
        flag:=false;
        writeln('Строка введена неверно!');
        break
      end;1
  if flag then
    for i:=1 to k do
      sum:=sum+StrToInt(snumber[i])*LevelNum(k-i);
  if flag then
    writeln('Результат = ',sum)
end.
