Program Z25ege018;
const N=11;
var
  a: array [1..N] of integer;
  i, s, smax, l, lmax : integer;
begin
  l:=1;
  lmax:=0;
  for i:=1 to N do readln(a[i]);
  s:=a[1];
  smax:=a[1];

  for i:=1 to N-1 do
    if a[i+1]>a[i]
    then
       begin
         s:=s+a[i+1];
         l:=l+1;
writeln('s= ',s,'  l= ',l);
       end
    else
       begin
         if l>lmax then
            begin
               lmax:=l;
               smax:=s
            end;
writeln('smax= ',smax,'  lmax= ',lmax);
         l:=0;
         s:=0
       end;

  if lmax=0 then smax:=s;
  writeln('рез=',smax)
end.