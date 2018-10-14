Program Mas_NxN_05;

  const N=4;
        CM : array[1..N,1..N]of integer = ((12, 5,-3, 11),
                                           ( 0, 7,-4, 21),
                                           (-5, 0, 12, 7),
                                           ( 1,-4,-14, 9));
  type
    mas1 = array[1..N,1..N]of integer;
  var
    A : mas1;
    i, j : integer;
    s1, s2, s3, s4 : string;
begin
  s1:='';
  s2:='';
  s3:='';
  s4:='';
  A:=CM;
  for i:=1 to N do
    for j:=1 to N do
      begin
        if j-i=1 then
          s1:=s1+' '+IntToStr(a[i,j]);
        if i-j=1 then
          s2:=s2+' '+IntToStr(a[i,j]);
        if N-i=j then
          s3:=s3+' '+IntToStr(a[i,j]);
        if N-j+2=i then
          s4:=s4+' '+IntToStr(a[i,j]);
      end;
  writeln('Над главной = ',s1);
  writeln('Под главной = ',s2);
  writeln('Над второстепенной = ',s3);
  writeln('Под второстепенной = ',s4)
end.
