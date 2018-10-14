Program MatchModel016;
const N=7;
var
  a: array [1..N] of integer;
  max, min, indexmax, indexmin, i, j : integer;
begin
  j:=1;
  indexmin:=1;
  indexmax:=1;
  writeln('введите массив = ');
  for i:=1 to N do
    readln(a[i]);
  max:=a[1];
  min:=a[1];
  for i:=1 to N do
    begin
      if max < a[i] then
        begin
          indexmax:=i;
          max:=a[i]
        end;
      if min > a[i] then
        begin
          indexmin:=i;
          min:=a[i]
        end
    end;
//  if indexmax > indexmin then



  writeln('результат = ',max,'   ',min,'   ',indexmax,'   ',indexmin)
end.