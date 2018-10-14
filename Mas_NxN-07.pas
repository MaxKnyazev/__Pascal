program TTT;

var   a,b,c : integer;

procedure PP;
begin
 c:=a+b;
end;

function FF:integer;
begin
 FF:=a+b;
end;

begin

   a:=2;
   b:=3;
   //PP;
   c:=7 + FF;
   
   writeln('---> ', c);

end.