Program z013_2017;
var t : integer;

begin
  write('введите t = '); readln(t);
  if t = 1 then
    writeln('Понедельник');
  if t = 2 then
    writeln('Вторник');
  if t = 3 then
    writeln('Среда');
  if t = 4 then
    writeln('Четверг');
  if t = 5 then
    writeln('Пятница');
  if t = 6 then
    writeln('Суббота');
  if t = 7 then
    writeln('Воскресенье');
  case t of
    1..3 : writeln('Понедельник');
    2 : writeln('Вторник');
    3 : writeln('Среда');
    4 : writeln('Четверг');
    5 : writeln('Пятница');
    6 : writeln('Суббота');
    7 : writeln('Воскресенье');
  end; {case}
  if (t > 7)or(t < 1)then
    writeln('Переменная t введена неверно! (t от 1 до 7)')

end.