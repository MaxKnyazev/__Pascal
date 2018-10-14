{
Дан целочисленный массив из 10 элементов.
Найдите количество элементов массива, значения которых больше 5(пяти).

Например :
Вход :
|  -2  |  5  |   7  |  4  |  -11  |  -4  |   8  |  2  |  -5  |  12  |

Выход (результат):
Результат= 3
}
program MAX55;
  const N=10;
  var
    A:array[1..N] of integer;
    rez,i:integer;
begin
  rez:=0;
  writeln('Введите массив A=');
  for i:=1 to N do read(A[i]);
  for i:=1 to N do
    if A[i]>5 then
      rez:=rez+1;
  writeln('Результат=',rez)
end.
