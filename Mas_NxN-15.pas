{
  Дана прямоугольная целочисленная таблица A[1:5,1:5]. Найдите наименьшее целое
  число K, обладающее таким свойством: хотя бы в одной строке таблицы все
  элементы не превосходят K.
}
Program Mas_NxN_15;

const N = 5;
      CM : array[1..N,1..N]of integer = ((12, 5,-3, 11, 45),
                                         ( 0, 7,-4, 46, 13),
                                         (-5, 0, 47, 7, -8),
                                         ( 1,-4,-14, 9, 43),
                                         ( 3, 8, 44, 4,-12));
var
  a : array[1..N,1..N]of integer;
  
function AA : integer;
var
  K, KMin, i, j : integer;
begin
  a:=CM;
  K:=a[1,1];
  KMin:=maxint;
  for i:=1 to N do
    begin
      for j:=1 to N do
        if a[i,j]>K then
          K:=a[i,j];
      if K<KMin then
        KMin:=K;
      K:=maxint*(-1)
    end;
  AA:=Kmin
end;

begin
  writeln('Результат = ',AA)
end.