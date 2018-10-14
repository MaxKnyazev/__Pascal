Program Mas_NxN_04;
<<<<<<< 17239f5e5a3b51b9ee567d864608465d731ce677
const N=4;
      CM : array[1..N,1..N] of integer = (( 1,-5, 1, 1),
                                          ( 1, 1, 1, 1),
                                          (-1, 1, 1, 1),
                                          (14,-7, 1, 0));
type Mas = array[1..N,1..N] of integer;
var
  a : Mas;
  i, j, summaI, summaJ : integer;
  s1, s2 : string;
begin
{
  writeln('Введите массив =');
  for i:=1 to N do
    for j:=1 to N do
      readln(a[i,j]);
}
  s1:='';
  s2:='';
  summaI:=0;
  summaJ:=0;
  a:=CM;
  for i:=1 to N do
    for j:=1 to N do
      if a[i,j] = 0 then
        begin
          summaI:=summaI+i;
          summaJ:=summaJ+j;
          s1:=s1+IntToStr(i)+'+';
          s2:=s2+IntToStr(j)+'+';
        end;
  Delete(s1,length(s1),1);
  Delete(s2,length(s2),1);
  s1:=s1+'='+IntToStr(summaI);
  s2:=s2+'='+IntToStr(summaj);
  writeln(s1);
  writeln(s2);
  if summaI = summaJ then
    writeln('Суммы равны')
  else if summaI>summaJ then
         writeln('Максимум по i равен = ',summaI)
  else if summaJ>summaI then
         writeln('Максимум по j равен = ',summaJ)
end.
=======

  const N=4;
        CM : array[1..N,1..N]of integer = ((12,-10,-3,11),
                                           (-7, 7,-5, 21),
                                           (-5,-10,12,-5),
                                           ( 1,-4, 5, 9));
  type
    mas1 = array[1..N,1..N]of integer;
  var
    A : mas1;
    i, j, sumFirst, sumSecond : integer;
begin
  A:=CM;
  sumFirst:=0;
  sumSecond:=0;
  for i:=1 to N do
    for j:=1 to N do
      begin
        if j-i=1 then
          sumFirst:=sumFirst+a[i,j];
        if i-j=1 then
          sumSecond:=sumSecond+a[i,j]
      end;
  if sumFirst>sumSecond then
    writeln('Результат = ',sumFirst);
  if sumSecond>sumFirst then
    writeln('Результат = ',sumSecond);
  if sumFirst=sumSecond then
    writeln('Суммы равны');
end.
>>>>>>> e25a9be7ee60803970a3e1d9b334bbbd03ab9f19
