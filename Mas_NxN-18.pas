{
  Проверьте является ли прямоугольная целочисленная таблица A[1..5,1..5]
  "магическим квадратом" (это значит, что суммы чисел во всех её вертикалях,
  всех горизонталях и двух диагоналях одинаковы).
}
Program Mas_NxN_18;

const N = 5;
      CM : array[1..N,1..N]of integer = (( 1, 5, 5, 5, 5),
                                         ( 5, 2, 5, 5, 5),
                                         ( 5, 5, 3, 5, 5),
                                         ( 5, 5, 5, 4, 5),
                                         ( 5, 5, 5, 5, 5));
      CN : array[1..N,1..N]of integer = (( 5, 5, 5, 5, 5),
                                         ( 5, 5, 5, 5, 5),
                                         ( 5, 5, 5, 5, 5),
                                         ( 5, 5, 5, 5, 5),
                                         ( 5, 5, 5, 5, 5));
var
  a : array[1..N,1..N]of integer;
  i, k, sumFirst, sumSecond : integer;
  flag : boolean;
  
function sumStrok(t : integer) : integer;
var j, sum : integer;
begin
  sum:=0;
  for j:=1 to N do
    sum:=sum+a[t,j];
  sumStrok:=sum
end;

function sumStolb(t : integer) : integer;
var j, sum : integer;
begin
  sum:=0;
  for j:=1 to N do
    sum:=sum+a[j,t];
  sumStolb:=sum
end;

begin
  a:=CN;
  flag:=true;
  sumFirst:=sumStrok(1);
  for i:=2 to N do
    begin
      sumSecond:=sumStrok(i);
      if sumSecond<>sumFirst then
        flag:=false
    end;
  if flag then
    for i:=2 to N do
      begin
        sumSecond:=sumStolb(i);
        if sumSecond<>sumFirst then
          flag:=false
      end;
  if flag then
    begin
      sumSecond:=0;
      for i:=1 to N do
        for k:=1 to N do
          if i=k then
            sumSecond:=sumSecond+a[i,k];
    if sumSecond<>sumFirst then
      flag:=false
    end;
  if flag then
    begin
      sumSecond:=0;
      for i:=1 to N do
        for k:=1 to N do
          if N-i+1=k then
            sumSecond:=sumSecond+a[i,k];
    if sumSecond<>sumFirst then
      flag:=false;
    end;
  if flag then
    writeln('Массив является "магическим квадратом"')
  else
    writeln('Массив не является "магическим квадратом"')
end.