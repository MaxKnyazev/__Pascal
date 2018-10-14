Program Mas_NxN_10;

const N = 5;

var
  i : integer;
  a, b : array[1..N] of integer;

function AA(t : integer) : integer;
var loc : integer;
 begin
  loc:=0;
  if t=-1 then
    for i:=1 to N do
      if a[i] < b[i] then
         loc:=loc+1;
  if t=0 then
    for i:=1 to N do
      if a[i] = b[i] then
         loc:=loc+1;
  if t=1 then
    for i:=1 to N do
      if a[i] > b[i] then
         loc:=loc+1;
   AA := loc
 end;

begin
  writeln('Введите массив A =');
  for i:=1 to N do
    read(a[i]);
  writeln('Введите массив B =');
  for i:=1 to N do
    read(b[i]);
  writeln('Кол-во элементов, a[i] < b[i] = ',AA(-1));
  writeln('Кол-во элементов, a[i] = b[i] = ',AA(0));
  writeln('Кол-во элементов, a[i] > b[i] = ',AA(1));
end.