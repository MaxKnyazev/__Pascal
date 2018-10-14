Program Mas_NxN_28;
var M, N, i : integer;
    flag : boolean;

function AA(a : integer; b : integer) : boolean;
var flag : boolean;
begin
  for i:=1 to a do
    if(a mod i=0)and(b mod i=0)and(i<>1)then
      flag:=false;
  AA:=flag;
end;
    
begin
  flag:=true;
  write('¬ведите числа = ');
  readln(M);
  readln(N);
  if M>N then
    AA(N,M)
  else
    AA(M,N);
  if AA(M,N) then
    writeln('„исла взаимно простые')
  else
    writeln('„исла не взаимно простые')
end.
