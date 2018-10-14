Program Mas_NxN_20;
var numberDec, ns : integer;
    numberDv : string;

function DecToAll(n, DD : integer): string;
var Dv : string;
begin
  Dv:='';
  repeat
    Dv:=intToStr(DD mod n)+Dv;
    DD:=DD div n;
  until DD < n;
  Dv:=intToStr(DD)+Dv;
  DecToAll:=Dv
end;

begin
  write('¬ведите число = '); readln(numberDec);
  write('¬ведите системы = '); readln(ns);
  numberDv:=DecToAll(ns, numberDec);
  writeln(numberDv);
end.