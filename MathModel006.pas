Program MatchModel006;

var Z, X, Y : integer;

begin
write('������� ������ ������� = '); readln(Z);
write('������� ������ ������� = '); readln(X);
write('������� ������ ������� = '); readln(Y);
if ((Z >= X)and(X >= Y))or((Z <= X)and(X <= Y))then
  begin
    Z:=Z*2;
    X:=X*2;
    Y:=Y*2;
    writeln('��� ���������� = ',Z,' ',X,' ',Y)
  end
else
  begin
      Z:=Z*(-1);
      X:=X*(-1);
      Y:=Y*(-1);
   writeln('��� �� ���������� = ',Z,' ',X,' ',Y)
    end
//writeln('��������� = ',Z,' ',X,' ',Y)
end.