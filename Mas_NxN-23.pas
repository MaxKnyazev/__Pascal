Program Mas_NxN_23;
const N=60;
var chislo, i, num, k : integer;
    flag : boolean;

function PrOrSl(t : integer) : boolean;
var j, i : integer;
begin
  j:=0;
  for i:=1 to t do
    if t mod i=0 then
      j:=j+1;
  if j > 2 then
    PrOrSl:=true
  else
    PrOrSl:=false
end;

begin
  k:=0;
  num:=1;
  repeat
    flag:=true;
    for i:=1 to num do
      if (num mod i=0)and(i<>1)and(i<>2)and(i<>3)and(i<>5) then
        if not PrOrSl(i) then
          flag:=false;
    if flag then
      begin
        k:=k+1;
        writeln(num,' ',k)
      end;
    num:=num+1
  until k=100;
  writeln('Расчёт окончен >>>>>>>>>>>')
end.
