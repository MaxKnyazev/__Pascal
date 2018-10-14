<<<<<<< b73bdbc6b701761f1464072fa5b292042dc0af06
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
=======
Program Mas_NxN_24;
var i : integer;
    snumber : string;

function AA(a : integer) : integer;
var snumber : string;
begin
  snumber:=IntToStr(a);
  if (snumber[1]<>snumber[2])or(snumber[2]<>snumber[3])then
    writeln(a)
end;

begin
  writeln('Результат :');
  for i:=100 to 999 do
    AA(i);


>>>>>>> 8b233475f4b37556c6633d33d728d4ad2212c0fa
end.
