{
  Дана целочисленная таблица A[1:10]. Проверьте, есть ли в ней элементы,
  равные 0.
  Если есть, то найдите номер первого из них, то есть наименьшее i, при
  котором A[i]=0.
  Если нет - вывести слово "нет".
}
Program Mas_NxN_12;

const N = 5;

var
  i : integer;
  flag : boolean;
  a : array[1..N]of integer;
  
function AA : integer;

 begin
  flag:=false;

  for i:=1 to N do
    if a[i]=0 then
      begin
        flag:=true;
        break;
      end;
  AA:=i
 end;

begin
  writeln('Введите массив :');
  for i:=1 to N do
    readln(a[i]);
  AA;
  if flag then
    writeln('Результат = ',AA)
  else
    writeln('нет')
end.