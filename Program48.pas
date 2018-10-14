program MAX48;
var
  s1,s2:string;
  k,i:integer;
begin
  s2:='';
  writeln('Введите S=');
  read(s1);
  k:=length(s1);
  for i:=1 to k do
    case s1[i] of
    '0','1','2','3','4','5','6','7','8','9': s2:=s2+s1[i]
    end;{case}
  k:=length(s2);
  if k<>0
  then
  begin
  s1:='';
  for i:=1 to k do
    if s2[i]='0' then
      s1:=s1+s2[i];
  for i:=1 to k do
    if s2[i]='1' then
      s1:=s1+s2[i];
  for i:=1 to k do
    if s2[i]='2' then
      s1:=s1+s2[i];
  for i:=1 to k do
    if s2[i]='3' then
      s1:=s1+s2[i];
  for i:=1 to k do
    if s2[i]='4' then
      s1:=s1+s2[i];
  for i:=1 to k do
    if s2[i]='5' then
      s1:=s1+s2[i];
  for i:=1 to k do
    if s2[i]='6' then
      s1:=s1+s2[i];
  for i:=1 to k do
    if s2[i]='7' then
      s1:=s1+s2[i];
  for i:=1 to k do
    if s2[i]='8' then
      s1:=s1+s2[i];
  for i:=1 to k do
    if s2[i]='9' then
      s1:=s1+s2[i];
  writeln('Результат =',s1);
  end
  else writeln('Результат = цифр в исходной строке нет')
end.