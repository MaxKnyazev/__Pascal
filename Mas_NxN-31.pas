Program Mas_NxN_31;
var i, k, t : integer;
    s1, s2, rez : string;

function F2(a : char; b : char) : char;
begin
  if a<>b then
    F2:='1'
  else
    F2:='0';
end;

begin
  t:=0;
  rez:='';
  write('¬ведите первое число (0 и 1) = '); readln(s1);
  write('¬ведите второе число (0 и 1) = '); readln(s2);

  if length(s1)>length(s2) then
     for i:=1 to length(s1)-length(s2) do s2:=' '+s2;
  if length(s2)>length(s1) then
     for i:=1 to length(s2)-length(s1) do s1:=' '+s1;
  k:=length(s1);

  for i:=1 to k do
    begin
      if s1[i]=' ' then
        rez:=rez+s2[i];
      if s2[i]=' ' then
        rez:=rez+s1[i];
      if (s1[i]<>' ')and(s2[i]<>' ')then
        rez:=rez+F2(s1[i],s2[i])
    end;

  writeln('s1  ',s1);
  writeln('s2  ',s2);
  writeln('rez ',rez);
end.