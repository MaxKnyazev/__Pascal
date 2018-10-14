Program MatchModel013;
var uravnFirst, uravnSecond, A, B, C : string;
    x : real;
    i, A2, B2, C2 : integer;
begin
  A2:=0;
  B2:=0;
  C2:=0;
  x:=0;
  A:='';
  B:='';
  C:='';
  uravnSecond:='';
  writeln('введите уравнение в формате Ax+B=C :'); readln(uravnFirst);
  
  for i:=1 to length(uravnFirst)do
    if uravnFirst[i]<>' 'then
      uravnSecond:=uravnSecond + uravnFirst[i];
  
//нахождение коэффициента A
  i:=1;
  repeat
    A:=A+uravnSecond[i];
    i:=i+1
  until uravnSecond[i]='x';
//пропускаем 'х' и '+'
  i:=i+2;
//нахождение коэффициента B
  repeat
    B:=B+uravnSecond[i];
    i:=i+1
  until uravnSecond[i]='=';
//пропускаем '='
  i:=i+1;
//нахождение коэффициента C
  repeat
    C:=C+uravnSecond[i];
    i:=i+1
  until i=length(uravnSecond)+1;
  A2:=StrToInt(A);
  B2:=StrToInt(B);
  C2:=StrToInt(C);
  x:=(C2-B2)/A2;
  writeln('x = ',x:5:5)
end.