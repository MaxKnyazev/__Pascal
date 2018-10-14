Program z012_2017;
const N = 10;

Type int = set of byte;
var s : string;
    i, k : integer;
    integ : int;
    intArr : array[1..N]of integer;
begin
  write('¬ведите массив = ');
  for i:=1 to N do
    readln(intArr[i]);
  for i:=1 to N do
    integ:=integ + [intArr[i]];
  for i:=0 to 9 do
    if i in integ then
      k:=k+1;
  writeln('–езультат = ',k);



end.