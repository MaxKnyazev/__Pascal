{
  Дана целочисленная таблица А[1:10]. Проверьте, есть ли в ней отрицательные
  элементы. Если есть, то найдите наибольшее i, при котором A[i]<0
}
Program Mas_NxN_11;

const N = 5;

var
  i : integer;
  a : array[1..N]of integer;
  
function AA : integer;
 var imax : integer;
 begin
  imax:=0;
  for i:=1 to N do
    if a[i]<0 then
      if i>imax then
        imax:=i;
  AA:=imax
 end;

begin
  writeln('Введите массив :');
  for i:=1 to N do
    readln(a[i]);
  AA;
  writeln('Результат = ',AA);
end.