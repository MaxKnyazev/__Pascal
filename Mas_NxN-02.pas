Program Mas_NxN_03;

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
  writeln('¬ведите массив =');
  for i:=1 to N do
    for j:=1 to N do
      readln(A[i,j]);
}
{
  writeln('–езультат =');
  i:=1;
  j:=N;
  repeat
    writeln('  ',A[i,j]);
    i:=i+1;
    j:=j-1;
  until j=0;
}

  for i:=1 to N do
      writeln(A[i,N-i+1]);

end.
