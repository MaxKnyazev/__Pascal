program MAX42;
var
   s:string;
   flag1,flag2,flag3,flag4,k,i:integer;
begin
   flag1:=0;
   flag2:=0;
   flag3:=0;
   flag4:=0;
   write('������� S=');
   read(s);
   k:=length(s);
   for i:=1 to k do
       if s[i]='�' then flag1:=1 else
       if s[i]='�' then flag2:=1 else
       if s[i]='�' then flag3:=1 else
       if s[i]='�' then flag4:=1;
    if (flag1=1)and(flag2=1)and(flag3=1)and(flag4=1)
      then writeln('(���������):�����')
      else writeln('(���������):������')
end.