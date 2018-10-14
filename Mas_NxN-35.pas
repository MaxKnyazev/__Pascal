Program ReversArray;

const N=14;

var arrNumbers : array[1..N] of integer;
    i, k, temp, midpoint : integer;

begin
  for i:=1 to N do
    arrNumbers[i]:=Random(100);

  writeln('Печать исходного массива : ');
  for i:=1 to N do write(arrNumbers[i],'   ');
  writeln;

  k:=N div 2;
  midpoint:=k div 2;

  for i:=1 to midpoint do
    begin
      temp:=arrNumbers[i];
      arrNumbers[i]:=arrNumbers[k-i+1];
      arrNumbers[k-i+1]:=temp;
      temp:=arrNumbers[i+k];
      arrNumbers[i+k]:=arrNumbers[k-i+1+k];
      arrNumbers[k-i+1+k]:=temp;
    end;

  writeln('Печать изменённого массива : ');
  for i:=1 to N do
    write(arrNumbers[i],'   ');

end.