program MAX54;
  const N=10;
  var
    A:array[1..N] of integer;
    max,min,i:integer;
begin
  writeln('¬ведите массив A=');
  for i:=1 to N do read(A[i]);
  max:=A[1];
  min:=A[1];
  for i:=1 to N do
    begin
      if A[i]>max then
        max:=A[i];
      if A[i]<min then
        min:=A[i];
    end;
  writeln('–езультат=',max*min)
end.
