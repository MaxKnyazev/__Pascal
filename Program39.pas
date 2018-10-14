program MAX39;
var
  s1,s2,s3:string;
  flag,k,k1,k2,i:integer;
begin
flag:=0;
s3:='';
write('¬ведите s1=');
read(s1);
write('¬ведите s2=');
read(s2);
k1:=length(s1);
k2:=length(s2);
if k1<k2 then
           begin
             k:=k1;
             flag:=1
           end
         else
           begin
              k:=k2;
              flag:=2
           end;
for i:=1 to k do
  s3:=s3+s1[i]+s2[i];
if flag=1 then
   for i:=k+1 to k2 do s3:=s3+s2[i];
if flag=2 then
   for i:=k+1 to k1 do s3:=s3+s1[i];
write('–езультат=',s3)
end.