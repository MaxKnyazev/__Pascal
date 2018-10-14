Program z022_2018;
var all, num, notNum : text;
    s : string;
    
function checkNum(str : string) : boolean;
var i : integer;
begin
  checkNum:=true;
  for i:=1 to length(str)do
    case str[i] of
      'a'..'z','A'..'Z': checkNum:=false;
    end;
end;

function checkNotNum(str : string) : boolean;
var i : integer;
begin
  checkNotNum:=true;
  if checkNum(str) = false then
    for i:=1 to length(str)do
      case str[i] of
        '0'..'9': checkNotNum:=false;
      end;
end;


begin
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
    if (checkNum(s) = true)and(s<>'-') then
      writeln(num, s)
    else
      if (checkNotNum(s) = true)and(s<>'-') then
        writeln(notNum, s);
  end;
  close(all);
  close(num);
  close(notNum);
end.