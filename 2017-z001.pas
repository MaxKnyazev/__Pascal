Program z001_2017;

{ Сложение двух длинных чисел }

var numOne, numTwo : string;
    i, numRem, numResult : integer;
    strResult : string;
    
function checkUserStr(s : string): boolean;
  var i : integer;
  begin
    checkUserStr:=true;
    for i:=1 to length(s) do
     if (s[i]<'0')or(s[i]>'9')then checkUserStr:=false
  end;

procedure getTwoCharOfNumber(c1, c2 : string);
var n1, n2, sum : integer;
begin
  sum:=0; n1:=0; n2:=0;
  n1:=StrToInt(c1);
  n2:=StrToInt(c2);
  sum:=n1+n2+numRem;
  numRem:=sum div 10;
  numResult:=sum mod 10;
  strResult:=IntToStr(numResult)+strResult
end;

begin
  strResult:='';
  numResult:=0;
  repeat
    write('Введите превое число = '); readln(numOne);
    if not checkUserStr(numOne) then
      writeln('Это не число! Повторите ввод.')
  until checkUserStr(numOne);
  repeat
    write('Введите второе число = '); readln(numTwo);
    if not checkUserStr(numTwo) then
      writeln('Это не число! Повторите ввод.')
  until checkUserStr(numTwo);

  if length(numOne)>=length(numTwo)then
    for i:=1 to length(numOne)-length(numTwo)do
      numTwo:='0'+numTwo
  else
    for i:=1 to length(numTwo)-length(numOne)do
      numOne:='0'+numOne;

  for i:=length(numOne)downto 1 do getTwoCharOfNumber(numOne[i],numTwo[i]);
  if numRem>0 then strResult:=IntToStr(numRem)+strResult;

  writeln('Результат = ',strResult);
end.