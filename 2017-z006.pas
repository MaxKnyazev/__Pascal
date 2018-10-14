Program z006_2017;
var A, B, C : array[1..10]of integer;
    i : integer;
    
procedure fillRandom(var a : array[1..10]of integer);
begin
  for i:=1 to 10 do
    a[i]:=random(101);
end;

procedure writeMas(var a : array[1..10]of integer);
begin
  for i:=1 to 10 do
    write(' ',a[i]);
  writeln;
end;

begin
  fillRandom(A);
  fillRandom(B);
  for i:=1 to 10 do
    if A[i]>B[i]then
      C[i]:=A[i]
    else
      C[i]:=B[i];
  writeln('Первый массив(A) = ');
  writeMas(A);
  writeln('Второй массив(B) = ');
  writeMas(B);
  writeln('Третий массив(C) = ');
  writeMas(C)
end.