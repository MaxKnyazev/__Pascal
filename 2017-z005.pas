Program z005_2017;
var k : integer;

function checkNum(num : integer) : boolean;
var a, i : integer;
begin
  a:=10;
  checkNum:=true;
  for i:=1 to 4 do
    begin
      if ((num mod a)div(a div 10))mod 2=0 then
        begin
          checkNum:=false;
          break
        end;
      a:=a*10;
    end
end;

begin
//  write('¬ведите число : '); readln(num);
  for k:=1000 to 9999 do
    if checkNum(k) then
      writeln('  ',k)
end.