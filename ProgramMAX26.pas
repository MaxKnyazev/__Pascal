program MAX26;
var S:string;
    k,i,c:integer;
begin
     write('введите строку S=');
     read(S);
     k:=length(S);
     for i:=2 to k do
         if (S[i-1]<>' ')and(S[i]=' ') then c:=c+1;
     if S[k]<>' ' then c:=c+1;
     write('кол-во слов=', c);
end.

