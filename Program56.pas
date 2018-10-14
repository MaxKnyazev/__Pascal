program MAX56;
    const N=8;
  var
    A:array[1..N] of integer;
    j,k,i:integer;
begin
  j:=0;
  writeln('Введите массив A=');
  for i:=1 to N do read(A[i]);
  k:=A[2];
  for i:=2 to N-1 do
    if (A[i]<A[i-1])and(A[i]<A[i+1])then
      begin
        if A[i]<=k then k:=A[i];
        j:=j+1;
      end;
  if j=0 then writeln('Результат = 0')
         else writeln('Результат = ',k)
end.
