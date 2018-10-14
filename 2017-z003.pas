Program z003_2017;
const constStudentYears : array[1..7] of integer = (18, 19, 20, 21, 22, 23, 24);
      constStudentGroup : array[1..7] of integer = (1, 2, 3, 4, 5, 6, 7);
      constStudentName : array[1..7] of string = ('Misha', 'Maxim', 'Vlad', 'Vitya', 'Dima', 'Denis', 'Oleg');

var answer, i : integer;
    studentYears, studentGroup : array[1..7] of integer;
    studentName : array[1..7] of string;

procedure writeOnName(a : integer);
begin
  writeln('Возраст = ',studentYears[a]);
  writeln('Группа = ',studentGroup[a]);
end;

begin
  studentYears:=constStudentYears;
  studentGroup:=constStudentGroup;
  studentName:=constStudentName;
  writeln('1(возраст), 2(группа), 3(имя), 4(вывод по имени)'); readln(answer);
  if answer=1 then
    begin
      write('Возраст = ');
      for i:=1 to 7 do
        writeln(' ',studentYears[i])
    end;
  if answer=2 then
    begin
      write('Группа = ');
      for i:=1 to 7 do
        writeln(' ',studentGroup[i])
    end;
  if answer=3 then
    begin
      write('Имя = ');
      for i:=1 to 7 do
        writeln(' ',studentName[i])
    end;
  if answer=4 then
    begin
      write('1(Misha), 2(Maxim), 3(Vlad), 4(Vitya), 5(Dima), 6(Denis), 7(Oleg)'); readln(answer);
      writeOnName(answer);
    end;
end.