program MAX24;
var S:string;
    k,i:integer;
begin
     write('������� ������ S=');
     readln(S);
     k:=length(S);
     for i:=1 to k do
         if S[i]=' ' then
         begin
           S[i]:='*';
           writeln('������ �� ',i,'-� �����')
         end;
     write(S)
end.
