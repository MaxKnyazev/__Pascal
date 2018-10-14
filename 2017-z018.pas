Program z018_2018;

var s : string;
    i, k, j : integer;
    flag : boolean;
    
begin
  k:=0; //1;
  writeln('¬ведите строку S = '); readln(s);
  s:=UpperCase(s);
//  s:=Trim(s);
  s:=' '+s;
//  writeln('s = ',s);

  for i:=2 to length(s)do
    begin
      flag:=true;
      for j:=1 to i-1 do
        if s[i] = s[j] then
          flag:=false;
      if (flag)and(s[i]<>' ')then
        begin
          k:=k+1;
          writeln(k,' --> ', s[i])
        end;
    end;
    
  writeln('–езультат = ',k)
end.