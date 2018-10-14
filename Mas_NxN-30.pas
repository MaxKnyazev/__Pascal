Program Mas_NxN_30;
var i, k1, k2 : integer;
    s1, s2, s3 : string;
    flag : boolean;
{
function AA : integer;
begin

end;
}
begin
  flag:=true;
  s3:='';
  write('Введите первое число [0 или 1] = '); readln(s1);
  write('Введите второе число [0 или 1] = '); readln(s2);
  k1:=length(s1);
  k2:=length(s2);
  for i:=1 to k1 do
    if(s1[i]<>'0')and(s1[i]<>'1')then
      begin
        flag:=false;
        writeln('Число 1 введено неверно! Можно использовать только 0 или 1');
        break
      end;
  for i:=1 to k2 do
    if(s2[i]<>'0')and(s2[i]<>'1')then
      begin
        flag:=false;
        writeln('Число 2 введено неверно! Можно использовать только 0 или 1');
        break
      end;
  if flag then
    if k2>=k1 then
      for i:=k2 downto 1 do
        begin
          if i<=k1 then
            if s1[i]=s2[i] then
              s3:=s3+'0'
            else
              s3:=s3+'1'
          else
            s3:=s3+s2[i]
        end;
  if flag then
    if k1>k2 then
      for i:=k1 downto 1 do
        begin
          if i<=k2 then
            if s1[i]=s2[i] then
              s3:=s3+'0'
            else
              s3:=s3+'1'
          else
            s3:=s3+s1[i]
        end;
  if flag then
    writeln('Результат = ',s3)
end.
