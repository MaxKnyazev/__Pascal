Program MatchModel010;
var
  stringFirst, stringSecond : string;
  stringLength, i, j : integer;
begin
  write('������� ������ ������ = '); readln(stringFirst);
  write('������� ������ ������ = '); readln(stringSecond);
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
      writeln('�����!')
    else
      writeln('������!');
  writeln('������ ������ = ',stringFirst);
  writeln('������ ������ = ',stringSecond)
end.