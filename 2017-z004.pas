Program z004_2017;
var rebroX, rebroY, rebroZ, a, b : integer;

function check(x, y : integer) : boolean;
begin
  check:=false;
  if((x<a)or(x<b)and(y<a)or(y<b))then
    check:=true
end;

begin
  write('Введите рёбра кирпича = '); readln(rebroX); readln(rebroY); readln(rebroZ);
  write('Введите стороны дырки a и b = '); readln(a); readln(b);
  if(check(rebroX, rebroY))or(check(rebroX, rebroZ))or(check(rebroY, rebroZ))then
    writeln('Входит!')
  else
    writeln('Не входит!')
end.