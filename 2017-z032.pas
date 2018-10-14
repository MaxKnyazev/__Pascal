Program z032_2018;
var    sinx : text;
       x, y : real;
    grafInt : integer;
    
procedure buildPolGraf(g : integer);
var i : integer;
    s : string;
begin
  s:='';
  for i:=1 to 90 do s:=s+' ';
  s:=s+'*';
  for i:=1 to g do s:=s+' ';
  s:=s+'*';
  writeln(s);
end;

procedure buildOtrGraf(g : integer);
var i : integer;
    s : string;
begin
  s:='';
  g:=g*(-1);
  for i:=1 to 90 do
    begin
      if(i = 90 - g)or(i = 90)then s:=s+'*';
      s:=s+' ';
    end;
  if g = 0 then writeln(' ',s)
           else writeln(s);
end;

begin
  Assign(sinx,'d:/pluspascal/sinx.txt');
  grafInt:=0;
  x:=-Pi;
  rewrite(sinx);
  repeat
    y:=sin(x);
    grafInt:=Trunc(y*50);
//    writeln('x = ',x,'             y = ',y,'             grafInt = ',grafInt);
    if y>=0 then buildPolGraf(grafInt);
    if y<0 then buildOtrGraf(grafInt);
//            else buildOtrGraf(grafInt);
    writeln(sinx, y);
    x:=x+0.1;
  until x>Pi;
  close(sinx);
end.
