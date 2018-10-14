program MAX25;
var S,S2:string;
    k,i:integer;
begin
     S2:='';
     write('введите строку S=');
     readln(S);
     k:=length(S);
     for i:=1 to k do
         if S[i]<>' ' then S2:=S2+S[i];
     write(S2)
end.
