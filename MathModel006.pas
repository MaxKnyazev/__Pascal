Program MatchModel006;

var Z, X, Y : integer;

begin
write('введите первый элемент = '); readln(Z);
write('введите второй элемент = '); readln(X);
write('введите третий элемент = '); readln(Y);
if ((Z >= X)and(X >= Y))or((Z <= X)and(X <= Y))then
  begin
    Z:=Z*2;
    X:=X*2;
    Y:=Y*2;
    writeln('Ряд упорядочен = ',Z,' ',X,' ',Y)
  end
else
  begin
      Z:=Z*(-1);
      X:=X*(-1);
      Y:=Y*(-1);
   writeln('Ряд не упорядочен = ',Z,' ',X,' ',Y)
    end
//writeln('результат = ',Z,' ',X,' ',Y)
end.