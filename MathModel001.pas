Program MathModel001;
  const N=4;
var
  appleBox : array[1..N] of integer;
  iter, appleFromKolhoz  : integer;
begin
  writeln('��������� ���� = ');
  for iter:=1 to N do read(appleBox[iter]);
  for iter:=1 to N do
    begin
      if appleBox[iter] < 0 then
        begin
          repeat
            write('�������� =');
            readln(appleFromKolhoz)
          until appleFromKolhoz > 0;
          appleBox[iter]:=appleFromKolhoz
        end;
    end;
  writeln('���� �������� :');
  for iter:=1 to N do
    write('  ',appleBox[iter])
end.