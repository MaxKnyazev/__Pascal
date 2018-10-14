program MAX32;
var
  s1,s2,s3:string;
  k,n,i,j:integer;
begin
  write('введите s1=');
  read(s1);
  write ('введите s2=');
  read(s2);
  k:=length(s1);
//  n:=length(s2);
  for i:=1 to k do
//    for j:=1 to n do
      s3:=s3+s1[i]+s2[i];
  write('ответ =',s3);
end.