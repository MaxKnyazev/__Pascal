program MAX31;
var
  k,i,kol_prob:integer;
  s:string;
begin
     write('������� S=');
     read(s);
     k:=length(s);
     for i:=1 to k do
        if s[i]=' ' then
           kol_prob:=kol_prob+1;
     write('���-�� ��������=',kol_prob);
end.