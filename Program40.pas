program MAX40;
var
   s:string;
   kolf,k,i:integer;
begin
   write('¬ведите S=');
   read(s);
   k:=length(s);
   kolf:=0;
   for i:=1 to k do
     if s[i]='f' then
       kolf:=kolf+1;
    writeln('(for) k=',kolf);
   kolf:=0;
   i:=1;
   while i<=k do
     begin
       if s[i]='f' then
         kolf:=kolf+1;
       i:=i+1
     end;{while}
     writeln('(while) k=',kolf);
   kolf:=0;
   i:=1;
   Repeat
     if s[i]='f' then
         kolf:=kolf+1;
     i:=i+1
   until i>k;
   writeln('(repeat) k=',kolf)
end.