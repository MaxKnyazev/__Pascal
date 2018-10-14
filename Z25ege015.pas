Program Z25ege015;
  const
    N=5;
  var
    a: array [1..N] of integer;
    i : integer;
    s, y : real;
begin
  y:=0;
  s:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
    if a[i]<a[N]then
      begin
        y:=y+1;
        s:=s+a[i];
      end;
  if y=0 then writeln('Ни одного элемента меньше последнего не найдено!')
         else writeln('Результат =',s/y)
end.