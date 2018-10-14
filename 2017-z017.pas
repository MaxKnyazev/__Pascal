Program z016_2017;

var s : string;
    i, k : integer;
    ch : char;
    
begin
  k:=0;
  writeln('Введите строку S = '); readln(s);
  s:=UpperCase(s);
  for ch:='А' to 'Я' do
    for i:=1 to length(s) do
      begin
//        writeln(ch);
        if s[i] = ch then
          begin
            k:=k+1;
            break
          end;
      end;
  writeln('Результат = ',k)
end.