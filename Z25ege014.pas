Program Z25ege014;
  const
    N=5;
  var
    a: array [1..N] of integer;
    i, y : integer;
    s : real;
begin
  y:=0;
  s:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
    if a[i] mod 2<>0 then
      begin
        y:=y+1; {считает кол-во нечётных элементов}
        s:=s+a[i]; {считает сумму нечётных элементов}
      end;
  if s=0 then
    writeln('Небыло введено ни одного нечётного элемента!')
        else
      writeln('Результат =',s/y)
end.