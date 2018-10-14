Program Mas_NxN_26;
var i, sot, des, ed : integer;

begin
  sot:=0;
  des:=0;
  ed:=0;
  writeln('Результат =');
  for i:=100 to 200 do
    begin
      sot:=i div 100;
      des:=(i-sot*100)div 10;
      ed:=(i-sot*100)mod 10;
      if (sot<>des)and(des<>ed)and(sot<>ed)then
        writeln(i);
    end;
//  writeln('>>>>>>>>> ',sot,' ',des,' ',ed)
end.
