{
  Дана прямоугольная целочисленная таблица A[1:5,1:5]. Найдите наибольшее K,
  обладающее таким свойством: в любой строке таблицы есть эелемент
  больший или равный K.
}
Program Mas_NxN_15;

const N = 5;
      CM : array[1..N,1..N]of integer = ((48, 5,-3, 11, 49),
                                         ( 0, 7,-4, 49, 13),
                                         (-5, 0, 49, 7, -8),
                                         ( 1,-4,-14,-48, 49),
                                         ( 3, 8, 49, 4, 50));
var
  a : array[1..N,1..N]of integer;
  b : array[1..N]of integer;
  
function AFirst : integer;
  var i, j, max, h : integer;
begin
  h:=1;
  a:=CM;
  max:=a[1,1];
  for i:=1 to N do
    begin
      for j:=1 to N do
        if a[i,j]>max then
          max:=a[i,j];
      b[h]:=max;
      h:=h+1;
      max:=0;
    end
end;

function ASecond : integer;
  var min, i : integer;
begin
  min:=b[1];
  for i:=1 to N do
    if b[i]<min then
      min:=b[i];
  ASecond:=min
end;

begin
  AFirst;
  writeln('Результат = ',ASecond)
end.