program MAX23;
var S : string; //переменная типа строка
    k,m,i : integer;
begin
     write('введите строку S=');
     readln(S);
     m:=0;
     k:=length(S);
     for i:=1 to k do
         if s[i]=' ' then m:= m+1;
     write('кол.-во пробелов=',m)
end.