Program Z25ege019;

var
  i, s, smax, n, x1, x2 : integer;
begin
  write('������� n=');readln(n);
  write('������� ������ �����=');readln(x1);
  s:=x1;
  smax:=x1;
  i:=1;
  repeat
     write('������� ��������� �����=');readln(x2);
     s:=x1+x2;
     if s>smax then smax:=s;
     i:=i+1;
     x1:=x2
  until i=n;
  writeln('���=',smax)
end.