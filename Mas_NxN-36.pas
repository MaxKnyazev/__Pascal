Program deleteFirstNegativElement;

const N=7;

var arrFirst : array[1..N] of integer;
    arrSecond : array[1..N-1] of integer;
    i, k, t : integer;

begin
  for i:=1 to N do
     readln(arrFirst[i]);
     
  for i:=1 to N do
    if arrFirst[i]<0 then
      begin
        k:=i;
        break;
      end;

  t:=1;
  for i:=1 to N do
    begin
      if i = k then t:=t-1
      else arrSecond[t]:=arrFirst[i];
      t:=t+1;
    end;

  for i:=1 to N-1 do
    write(arrSecond[i],'   ');
  writeln;

end.