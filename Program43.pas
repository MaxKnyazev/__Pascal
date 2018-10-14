program MAX43;
var
   s:string;
   kol,k,i:integer;
begin
   kol:=0;
   write('Введите S=');
   read(s);
   k:=length(s);
   for i:=4 to k do
     if s[i]='r' then
        if s[i-3]+s[i-2]+s[i-1]='sta' then
           kol:=kol+1;
   writeln('Результат=',kol);
end.