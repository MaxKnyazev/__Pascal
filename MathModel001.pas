Program MathModel001;
  const N=4;
var
  appleBox : array[1..N] of integer;
  iter, appleFromKolhoz  : integer;
begin
  writeln('«аполните €щик = ');
  for iter:=1 to N do read(appleBox[iter]);
  for iter:=1 to N do
    begin
      if appleBox[iter] < 0 then
        begin
          repeat
            write('конвейер =');
            readln(appleFromKolhoz)
          until appleFromKolhoz > 0;
          appleBox[iter]:=appleFromKolhoz
        end;
    end;
  writeln('ящик заполнен :');
  for iter:=1 to N do
    write('  ',appleBox[iter])
end.