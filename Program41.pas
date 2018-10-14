program MAX41;
var
   s:string;
   kolf,k,i:integer;
begin
   write('Введите S=');
   read(s);
   k:=length(s);
   kolf:=0;
   s:=' '+s;
   for i:=1 to k-1 do
     if (s[i]=' ')and(s[i+1]='f') then
       kolf:=kolf+1;
   write('Найдено ',kolf)
end.