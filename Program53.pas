program MAX53;
  var
    A:array[1..10] of integer;
    summa,i:integer;
begin
  summa:=0;
  writeln('¬ведите массив A=');
  for i:=1 to 10 do read(A[i]);
  for i:=1 to 10 do
    if A[i]>0 then summa:=summa+A[i];
  writeln('–езультат=',summa)
end.