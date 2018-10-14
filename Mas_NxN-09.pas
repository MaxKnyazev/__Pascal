Program Mas_NxN_09;
var
  a1, a2, b1, b2, c1, c2 : integer;

procedure B(var va,vb,vc : integer);
var b : boolean;
  begin
    b:=false;
    if b then
      vc:=va+vb
    else
      vc:=va-vb
  end;

procedure BB(va,vb : integer);
  begin
    c1:=va+vb;
  end;

begin
  a1:=1;
  a2:=2;
  b1:=3;
  b2:=4;
  B(a1,b1,c1);
//  BB(1,3);
  writeln('c1 = ',c1);
  writeln('c2 = ',c2)
end.