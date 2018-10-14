Program z015_2017;
var f1, f2 : text;
    s, s2 : String;
    i, k : integer;
    
begin
  i:=1;
  k:=1;
  assign(f1, 'd:\pluspascal\names1.txt');
  assign(f2, 'd:\pluspascal\names2.txt');
  reset(f1);
  rewrite(f2);
  readln(f1, s);
  close(f1);
  s:=s+',';
  for i:=1 to length(s) do
    begin
      s2:=s2+s[i];
      if s[i] = ',' then
        begin
          s2:=trim(s2);
          delete(s2,length(s2),1);
          writeln(f2,s2);
          s2:='';
        end;
    end;
  close(f2);
end.