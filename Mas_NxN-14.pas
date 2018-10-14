{
  Дана целочисленная таблица A[1:10]. Подсчитайте, сколько раз встречается
  в этой таблице максимальное по величине число.
}
Program Mas_NxN_14;

const N = 5;

var
  i : integer;
  a : array[1..N]of integer;
  
function AA : integer;
var
  kolvo, max : integer;
begin
  kolvo:=0;
  max:=a[1];
  for i:=1 to N do
    if a[i]>max then
      max:=a[i];
  for i:=1 to N do
    if a[i]=max then
      kolvo:=kolvo+1;
  AA:=kolvo;
end;

begin
  writeln('Введите массив :');
  for i:=1 to N do
    readln(a[i]);
  AA;
  writeln('Результат = ',AA)
end.