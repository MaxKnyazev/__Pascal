Program z020_2018;
const N = 20;

type verb = record
  rus, inf, v2, v3 : string;
end;

var f : text;
    s, s1 : string;
    a : array[1..N] of verb;
    i, tr, fl, j : integer;
    temp : verb;
    
procedure parse(var v : verb);
var i, j : integer;
    p : string;
begin
  p:='';
  j:=1;
  for i:=1 to length(s)do
    begin
      if s[i] = ';' then
        begin
          if j = 1 then v.rus:=p;
          if j = 2 then v.inf:=p;
          if j = 3 then v.v2:=p;
          if j = 4 then
            begin
              v.v3:=p;
              j:=0;
            end;
          p:='';
          j:=j+1;
        end;
      if s[i]<>';' then p:=p+s[i];
    end;
end;

procedure test(a1, a2 : string);
var s1 : string;
begin
    writeln(a1{inf});
    readln(s1);
    if s1 = a2{rus} then
      begin
        tr:=tr+1;
        writeln('���������');
      end
    else
      begin
        fl:=fl+1;
        writeln('�����������');
      end;
end;
    
begin
  tr:=0;
  fl:=0;
  Assign(f,'d:\pluspascal\noVerbs1.txt');
  reset(f);
  
  i:=1;
  while not eof(f) do
  begin
    readln(f, s);
    parse(a[i]);
    i:=i+1;
  end;
  
  close(f);
{
  for i:=1 to N do
    begin
      writeln(a[i].rus);
      readln(s1);
      if s1 = 'exit' then
        break;
      if s1 = a[i].inf then
        begin
          tr:=tr+1;
          writeln('���������');
        end
      else
        begin
          fl:=fl+1;
          writeln('�����������');
        end;
    end;
  writeln('���������� = ',tr);
  writeln('������������ = ',fl);
}
  repeat
    writeln('� ����������� �� �������(����������);');
    writeln('� �������� �� ����������(�������)');
    readln(s1);

    if s1 = '����������' then
      begin
        writeln('��� ����� ���������� ����� �� ���������� ������. ');
        writeln('���� ������ ��������� ����� �� ������� ���� : ');
        writeln('===================================');
        i:=N;
        repeat
          j:=Random(i)+1;
          test(a[j].inf, a[j].rus);
          temp:=a[i];
          a[i]:=a[j];
          a[j]:=temp;
          i:=i-1;
          writeln('===================================')
        until i = 0;
      end;
    if s1 = '�������' then
      begin
        writeln('��� ����� ���������� ����� �� ������� ������. ');
        writeln('���� ������ ��������� ����� �� �������� ���� : ');
        writeln('===================================');
        i:=N;
        repeat
          j:=Random(i)+1;
          test(a[j].rus, a[j].inf);
          temp:=a[i];
          a[i]:=a[j];
          a[j]:=temp;
          i:=i-1;
          writeln('===================================')
        until i = 0;
      end;
    if (s1 <> '����������')and(s1 <> '�������')then
      writeln('����� ������� �����������!');
  until (s1 = '����������')or(s1 = '�������');
  
  writeln('���������� = ',tr);
  writeln('������������ = ',fl);
end.