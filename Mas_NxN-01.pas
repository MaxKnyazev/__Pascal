Program Mas_NxN_01;
  const N=4;
        CM : array[1..N,1..N]of integer = ((12, 5,-3, 11),
                                           ( 0, 7,-4, 21),
                                           (-5, 0, 12, 7),
                                           ( 1,-4,-14, 9));
  type
    mas1 = array[1..N,1..N]of integer;
var
  A : mas1;
  i, j : integer;
begin
  A:=CM;
{
  for i:=1 to N do
    for j:=1 to N do
      read(A[i,j]);
}
  writeln('Результат =');
  for i:=1 to N do
    for j:=1 to N do
      if i=j then
        writeln(A[i,j])
{
  for i:=1 to N do
    begin
      for j:=1 to N do
        write(A[i,j],'  ');
        writeln
     end;
}
end.
