program MAX47;
var
  s1,s2:string;
  per,k,i:integer;
  rez:real;
begin
  writeln('������� S=');
  read(s1);
  k:=length(s1);
  for i:=1 to k do
    case s1[i] of
      '0','1','2','3','4','5','6','7','8','9': s2:=s2+s1[i]
    end;{case}
  per:=StrToInt(s2);
  if per mod 3=0
  then
    begin
      rez:=per/3;
      writeln('����� ',s2,' ������� �� ���. ���������=',rez,'.')
    end
  else writeln('����� ',s2,' �� ������� �� ���.')
end.