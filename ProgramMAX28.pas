program MAX28;
var S,c1,c2:string;
    k,i,t:integer;
begin
     write('введите строку S=');
     read(S);
     k:=length(S);
     t:=0;//t - индекс найденного пробела
     c1:='';
     c2:='';

     for i:=1 to k do
         if S[i]=' ' then t:=i;
     for i:=1 to t-1 do c1:=c1+S[i];
     for i:=t+1 to k do c2:=c2+S[i];
     S:=c2+' '+c1;
     write('результат=',S);
end.

