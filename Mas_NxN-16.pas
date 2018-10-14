{
  Дана целочисленная таблица A[1:10]. Подсчитайте наибольшее число
  идущих подряд одинаковых элементов.
}
Program Mas_NxN_16;

const N = 5;
      CM : array[1..N]of integer = (0, 1, 3, 11, 45);
var
  a : array[1..N]of integer;
  
function AA : integer;
var
  i, podr, podrMax : integer;
begin
  a:=CM;
  podr:=1;
  podrMax:=0;
  for i:=2 to N do
    if a[i]=a[i-1] then
      podr:=podr+1
    else
      begin
        if podr>podrMax then
          podrMax:=podr;
        podr:=1
      end;
  AA:=podrMax
end;

begin
  writeln('Результат = ',AA)
end.