program MAX24;
var S:string;
    k,i:integer;
begin
     write('введите строку S=');
     readln(S);
     k:=length(S);
     for i:=1 to k do
         if S[i]=' ' then
         begin
           S[i]:='*';
           writeln('пробел на ',i,'-м месте')
         end;
     write(S)
end.
