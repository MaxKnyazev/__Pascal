Program z013_2017;
var t : integer;

begin
  write('������� t = '); readln(t);
  if t = 1 then
    writeln('�����������');
  if t = 2 then
    writeln('�������');
  if t = 3 then
    writeln('�����');
  if t = 4 then
    writeln('�������');
  if t = 5 then
    writeln('�������');
  if t = 6 then
    writeln('�������');
  if t = 7 then
    writeln('�����������');
  case t of
    1..3 : writeln('�����������');
    2 : writeln('�������');
    3 : writeln('�����');
    4 : writeln('�������');
    5 : writeln('�������');
    6 : writeln('�������');
    7 : writeln('�����������');
  end; {case}
  if (t > 7)or(t < 1)then
    writeln('���������� t ������� �������! (t �� 1 �� 7)')

end.