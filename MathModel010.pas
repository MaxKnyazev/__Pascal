Program MatchModel010;
var
  stringFirst, stringSecond : string;
  stringLength, i, j : integer;
begin
  write('введите первую строку = '); readln(stringFirst);
  write('введите вторую строку = '); readln(stringSecond);
  stringLength:=length(stringFirst);
  for i:=1 to stringLength do
    begin
      j:=0;
      repeat
        j:=j+1;
      until (stringSecond[j]=stringFirst[i])or(j=stringLength);
      stringFirst[i]:='*';
      stringSecond[j]:='*';
    end;
  if stringFirst = stringSecond then
      writeln('можно!')
    else
      writeln('нельзя!');
  writeln('первая строка = ',stringFirst);
  writeln('вторая строка = ',stringSecond)
end.