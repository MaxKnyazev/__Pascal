Program Z25ege020;

var
  s, smax, x1, x2 : integer;
begin
  write('������� ������ �����=');readln(x1);
  s:=x1;
  smax:=x1;
  repeat
     write('������� ��������� �����=');readln(x2);
     s:=x1+x2;
     if s>smax then smax:=s;
     x1:=x2
  until x2=0;
  writeln('���=',smax)
end.