Program Mas_NxN_32;
var chislo, t : integer;
    
procedure AA(var a : integer);
begin
  t:=a mod 10;
  a:=a div 10
end;

function AB(a : integer; b : integer) : integer;
begin
  if a=b then
    AB:=0
  else
    AB:=1;
end;

begin
  t:=0;
//  write('¬ведите число = '); readln(chislo);
  writeln('AB = ',AB(0,3));

  AA(chislo);
//  writeln(chislo,' ',t)

end.