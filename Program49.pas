program MAX49;
var
  s1,s2:string;
  k,i:integer;
begin
  s2:='';
  writeln('¬ведите S=');
  read(s1);
  k:=length(s1);
  for i:=1 to k do
    if (s1[i]=',')or(s1[i]=':')or(s1[i]=';')
    then
      if s1[i+1]=' ' then s2:=s2+s1[i]
                     else s2:=s2+s1[i]+' '
    else
      s2:=s2+s1[i];
  writeln(s2)
end.