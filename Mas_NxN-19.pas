{
  Дана целочисленная таблица A[1:10]. Подсчитайте количество таких i, что A[i]
  не меньше всех предыдущих элементов таблицы (A[1],A[2],...,A[i-1]).
}
Program Mas_NxN_19;

const N = 5;
      CM : array[1..N]of integer = ( 1, 1, 1, 1, 2);
      CN : array[1..N]of integer = ( 2, 1, 1, 1, 1);
      
var
  a, b : array[1..N]of integer;

function AA(mas : array[1..N] of integer) : integer;
var i, k, kolvo : integer;
    flag : boolean;
begin
  flag:=true;
  kolvo:=1;
  for i:=2 to N do
    begin
      for k:=1 to i do
        if mas[i]<mas[k]then
          flag:=false;
      if flag then
        kolvo:=kolvo+1;
      flag:=true
    end;
  AA:=kolvo
end;

begin
  b:=CN;
  a:=CM;
  writeln('Результат = ',AA(a));
  writeln('Результат = ',AA(b))
end.