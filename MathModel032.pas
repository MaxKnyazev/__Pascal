Program MatchModel032;
var
  i, k : integer;
  sFirst, sSecond : string;
begin
  writeln('������� ������');
  read(sFirst);
  k:=length(sFirst);
  sSecond:=sFirst[1];
  write('��������� : ');
  for i:=1 to k do
    if ord(sFirst[i])<=ord(sFirst[i+1])then
      sSecond:=sSecond+sFirst[i+1]
    else
      begin
        if length(sSecond)>1 then
          writeln(sSecond);
        sSecond:=sFirst[i+1];
      end;
end.