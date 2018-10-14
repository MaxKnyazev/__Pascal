Program z016_2017;

Type symbol = set of char;

var s : string;
    c2, c : symbol;
    i, k : integer;
    ch : char;
    
begin
  k:=0;
  write('Введите строку = '); readln(s);
  s:=UpperCase(s);

  for i:=1 to length(s) do
    c:=c + [s[i]];

  for ch:='А' to 'Я' do
    if ch in c then k:=k+1;
{
  for i:=1 to 255 do
    if (s[i] in c)and(s[i] in c2 = false)and(s[i]<>' ')then
      begin
        c2:=c2 + [s[i]];
        k:=k+1;
      end;
}
  writeln('Результат = ',k);
end.