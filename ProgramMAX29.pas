program MAX29;
var S,str1,str2:string;
    k,i,t:integer;
begin
     write('введите строку S=');
     readln(S);
     k:=length(S);
     t:=0;
     str1:='';
     str2:='';
     for i:=1 to k do
         if S[i]=' ' then t:=i;
     for i:=1 to t-1 do str1:=str1+S[i];
     for i:=k downto t do
         if S[i]=' ' then t:=i;
     for i:=t+1 to k do str2:=str2+S[i];
     S:=str2+' '+str1;
     write('Результат=',S);
end.

