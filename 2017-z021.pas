Program z021_2018;
var all, num, notNum : text;
    s : string;
    temp : integer;
    
function check(str : string) : integer;
var i, t : integer;
begin
  t:=1; {t может быть от 1 до 3; 1 - числа; 2 - буквы; 3 - смешанна€ строка}
  for i:=1 to length(str)do
    case str[i] of
      'a'..'z','A'..'Z': t:=2;
    end;
  if t = 2 then
    for i:=1 to length(str)do
      case str[i] of
        '0'..'9': t:=3;
      end;
  check:=t;
end;

begin
  temp:=0;
  Assign(all,'d:\pluspascal\all.txt');
  Assign(num,'d:\pluspascal\number.txt');
  Assign(notNum,'d:\pluspascal\notnumber.txt');
  rewrite(all);

  writeln('¬ведите строки :');
  writeln('ƒл€ выхода наберите "-"');
  repeat
    readln(s);
    writeln(all, s);
  until s = '-';

  close(all);
  
  reset(all);
  rewrite(num);
  rewrite(notNum);
  while not eof(all) do
  begin
    readln(all, s);
    temp:=check(s);
    if (temp = 1)and(s<>'-') then
      writeln(num, s);
    if temp = 2 then
      writeln(notNum, s);
  end;
  close(all);
  close(num);
  close(notNum);
end.