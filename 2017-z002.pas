Program z002_2017;
const constStudentYears : array[1..7] of integer = (18, 19, 20, 21, 22, 23, 24);
      constStudentGroup : array[1..7] of integer = (1, 2, 3, 4, 5, 6, 7);
      constStudentName : array[1..7] of string = ('Misha', 'Maxim', 'Vlad', 'Vitya', 'Dima', 'Denis', 'Oleg');
      constStudentFam : array[1..7] of string = ('Ivanov', 'Petrov', 'Sidorov', 'Sharipov', 'Legezin', 'Knyazev','Sirpichenko');
      constStudentOt : array[1..7] of string = ('Vladislavovich', 'Sergeevich', 'Ivanovich', 'Maximovich', 'Denisovich', 'Olegovich', 'Dmitriyvich');

Type student=record
  name : record
    fam : string;
    im : string;
    ot : string
    end;{record}
  year : integer;
  group : integer;
end;{record}

var answer, i : integer;
    studentYears, studentGroup : array[1..7] of integer;
    studentName, studentOt, studentFam  : array[1..7] of string;
    studentType : array[1..7] of student;
    
procedure writeOnName(a : integer);
begin
  writeln('Возраст = ',studentType[a].year);
  writeln('Группа = ',studentType[a].group);
end;

begin
  studentYears:=constStudentYears;
  studentGroup:=constStudentGroup;
  studentName:=constStudentName;
  studentOt:=constStudentOt;
  studentFam:=constStudentFam;
  for i:=1 to 7 do
    begin
      studentType[i].name.im:=studentName[i];
      studentType[i].name.ot:=studentOt[i];
      studentType[i].name.fam:=studentFam[i];
      studentType[i].year:=studentYears[i];
      studentType[i].group:=studentGroup[i]
    end;
  writeln('1(возраст), 2(группа), 3(имя), 4(вывод по имени), 5(фамилия), 6(отчество)'); readln(answer);
  
  if answer=1 then
    begin
      write('Возраст = ');
      for i:=1 to 7 do
        writeln(' ',studentType[i].year)
    end;
  if answer=2 then
    begin
      write('Группа = ');
      for i:=1 to 7 do
        writeln(' ',studentType[i].group)
    end;
  if answer=3 then
    begin
      write('Имя = ');
      for i:=1 to 7 do
        writeln(' ',studentType[i].name.im)
    end;
  if answer=4 then
    begin
      write('1(Misha), 2(Maxim), 3(Vlad), 4(Vitya), 5(Dima), 6(Denis), 7(Oleg)'); readln(answer);
      writeOnName(answer);
    end;
  if answer=5 then
    begin
      write('Фамилия = ');
      for i:=1 to 7 do
        writeln(' ',studentType[i].name.fam)
    end;
  if answer=6 then
    begin
      write('Отчество = ');
      for i:=1 to 7 do
        writeln(' ',studentType[i].name.ot)
    end;
end.