program Z25ege002;
  const
    N=2000;
var
  a: array [1..N] of integer;
  i, k : integer;
begin
  k:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
    k:=k+a[i];
  if k mod 2=0 then
    begin
      k:=0;
      for i:=1 to N do
        if a[i] mod 2<>0 then k:=k+1
    end{then}
               else
      begin
        k:=0;
        for i:=1 to N do
          if a[i] mod 2=0 then k:=k+1;
      end;
  writeln('���������=',k)
end.
