Program MatchModel031;
const N=7;
//      mas : array[1..N]of integer = (1,2,3,4,-5,6,7);
var
  a : array [1..N] of integer;
  i, j, k, temp : integer;
begin
//  a:=mas;
  k:=1;
  writeln('¬ведите массив = ');
  for i:=1 to N do
    readln(a[i]);
  j:=1;
  temp:=0;
  for i:=1 to N do
    if a[i]<0 then
      begin
        temp:=a[i];
        for j:=i downto k+1 do
          a[j]:=a[j-1];
        a[k]:=temp;
        k:=k+1
      end;
  writeln('–езультат =');
  for i:=1 to N do
    writeln(a[i])
end.