Program z019_2018;

var s, s2 : string;
    i, j : integer;
    flag : boolean;
    
begin
  writeln('������� ������ S = '); readln(s);
  s:=UpperCase(s);
  s2:=s[1];
  for i:=1 to length(s) do
    begin
      flag:=true;
      for j:=1 to length(s2) do
        if (s[i] = s2[j])or(s[i] = ' ') then
          begin
            flag:=false;
            break;
          end;
      if flag then
        s2:=s2+s[i];
    end;
  s2:=Trim(s2);
  writeln('������ ����� = ',s2);
  writeln('���-�� �������� = ',length(s2));

end.