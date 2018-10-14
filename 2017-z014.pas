Program z014_2017;
var f : text;
    s, s2 : String;
begin
  assign(f, 'd:\pluspascal\temp.txt');
{
  rewrite(f);
  repeat
    write('введите строку : '); Readln(s);
    writeln(f,s);
  until s = '.';
  close(f);
}
  reset(f);
  while not eof(f) do
    begin
      readln(f, s);
      writeln(s);
    end;
  close(f);
  
  
  
{
  readln(f, s2);
  writeln('s2 = ',s2);
  close(f);
}
end.