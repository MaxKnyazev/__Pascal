Program z011_2017;
var s : string;
    i, k : integer;
    
begin
  k:=0;
  write('������� ������ = '); readln(s);
  s:=' '+s;
  for i:=2 to length(s)do
    if (s[i]<>' ')and(s[i-1]=' ')then
      k:=k+1;
  writeln('���� � ������ = ',k);
end.