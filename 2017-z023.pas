Program z023_2018;
const N = 5; {Кол-во параметров в типе client}
      F = 7;
      
type client = record;
  inn, snils, money : string;
  fio : record;
    fam, name, ot : string;
  end;
  pasport : record;
    line, num : string;
  end;
  
end;

var fClients : text;
    cl : array[1..F] of client;
//    i : integer;
    strFind : string;

function cutOneWord(var s : string) : string;
var temp : string;
    i : integer;
begin
  temp:='';
  i:=1;
  s:=s+' ';
  repeat
    if s[i] <> ' ' then temp:=temp + s[i];
    i:=i+1;
  until s[i] = ' ';
  delete(s, 1, i);
  cutOneWord:=temp;
end;

procedure parseFile(var a : array[1..F] of client);
var i, j : integer;
    s : string;
begin
  reset(fClients);
  j:=1;
  for i:=1 to N*F do
    begin
      readln(fClients, s);
      case i - (N*(j-1)) of
        1 : begin
              a[j].fio.fam:=cutOneWord(s);
              a[j].fio.name:=cutOneWord(s);
              a[j].fio.ot:=cutOneWord(s);
            end;
        2 : begin
            a[j].pasport.line:=cutOneWord(s);
              a[j].pasport.num:=cutOneWord(s);
            end;
        3 : a[j].inn:=s;
        4 : a[j].snils:=s;
        5 : a[j].money:=s;
      end; //case
      if i mod 5 = 0 then
        j:=j+1;
    end;

  close(fClients);
end;

begin
  Assign(fClients,'d:\pluspascal\clients.txt');
  parseFile(cl);
//  write('==> ');readln(strFind);
  writeln('Фамилия = ',cl[1].fio.fam);
  writeln('Имя = ',cl[1].fio.name);
  writeln('Отчество = ',cl[1].fio.ot);
  writeln('Серия = ',cl[1].pasport.line);
  writeln('Номер = ',cl[1].pasport.num);
  writeln('ИНН = ',cl[1].inn);
  writeln('СНИЛС = ',cl[1].snils);
  writeln('Оклад = ',cl[1].money);

{
  for i:=1 to F do
    begin
      if (cl[i].s1 = strFind)or(cl[i].s2 = strFind)or(cl[i].s3 = strFind)or(cl[i].s4 = strFind)or(cl[i].s5 = strFind) then
        begin
          writeln(cl[i].s1);
          writeln(cl[i].s2);
          writeln(cl[i].s3);
          writeln(cl[i].s4);
          writeln(cl[i].s5);
        end
    end;
}
end.