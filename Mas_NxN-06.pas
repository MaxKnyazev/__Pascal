Program Mas_NxN_06;

const N = 7;
      CM : array[1..N,1..N] of integer = ((9,9,9,9,9,9,9),
                                          (9,9,9,9,9,9,9),
                                          (9,9,9,9,9,9,9),
                                          (9,9,9,9,9,9,9),
                                          (9,9,9,9,9,9,9),
                                          (9,9,9,9,9,9,9),
                                          (9,9,9,9,9,9,9));
type UleyType = array[1..N,1..N] of integer;

var
  a : UleyType;
  i, j, sumJ, sumI, neChetSum, chetSum, uleyMax, uleyMaxI, dayMax, uleyMin, uleyMinI, dayMin, uleySumMin, uleySum, uleySumMax, uleyMinJ, daySum, daySumMin, dayMinJ, daySumMax, dayMaxJ : integer;

procedure Task01;
  begin
    for i:=1 to N do
      begin
        sumJ:=0;
        for j:=1 to N do
          sumJ:=sumJ+a[i,j];
        writeln(i,'-й день = ',sumJ);
      end;
  end;

procedure Task02;
  begin
    for j:=1 to N do
      begin
        sumI:=0;
        for i:=1 to N do
          sumI:=sumI+a[i,j];
        writeln(j,'-й улей = ',sumI);
      end;
  end;

procedure Task03;
  begin
    neChetSum:=0;
    for i:=1 to N do
      for j:=1 to N do
        if i mod 2<>0 then
          neChetSum:=neChetSum+a[i,j];
    writeln('Кол-во мёда по нечётным дням = ',neChetSum)
  end;
  
procedure Task04;
  begin
    chetSum:=0;
    for i:=1 to N do
      for j:=1 to N do
        if i mod 2=0 then
          chetSum:=chetSum+a[i,j];
    writeln('Кол-во мёда по чётным дням = ',chetSum)
  end;

procedure Task05;
  begin
    uleyMax:=a[1,1];
    uleyMaxI:=1;
    dayMax:=1;
    for i:=1 to N do
      for j:=1 to N do
        if a[i,j]>uleyMax then
          begin
            uleyMax:=a[i,j];
            uleyMaxI:=j;
            dayMax:=i;
          end;
    writeln('улей ',uleyMaxI,'-ый, день ',dayMax,'-ый')
  end;
  
procedure Task06;
  begin
    uleyMin:=a[1,1];
    uleyMinI:=1;
    dayMin:=1;
    for i:=1 to N do
      for j:=1 to N do
        if a[i,j]<uleyMin then
          begin
            uleyMin:=a[i,j];
            uleyMinI:=j;
            dayMin:=i;
          end;
    writeln('улей ',uleyMinI,'-ый, день ',dayMin,'-ый')
  end;

procedure Task07;
  begin
    uleySum:=0;
    uleySumMin:=MaxInt;
    uleyMinI:=1;
    for i:=1 to n do
      begin
        for j:=1 to N do
          uleySum:=uleySum+a[i,j];
        if uleySum<uleySumMin then
          begin
            uleySumMin:=uleySum;
            uleyMinI:=i
          end;
        uleySum:=0
      end;
    writeln('День с минимальным сбором ',uleyMinI)
  end;
  
procedure Task08;
  begin
    uleySum:=0;
    uleySumMax:=0;
    uleyMaxI:=1;
    for i:=1 to n do
      begin
        for j:=1 to N do
          uleySum:=uleySum+a[i,j];
        if uleySum>uleySumMax then
          begin
            uleySumMax:=uleySum;
            uleyMaxI:=i
          end;
        uleySum:=0
      end;
    writeln('День с максимальным сбором ',uleyMaxI)
  end;
  
procedure Task09;
  begin
    daySum:=0;
    daySumMin:=0;
    dayMinJ:=1;
    for j:=1 to n do
      begin
        for i:=1 to N do
          daySum:=daySum+a[i,j];
        if daySum<daySumMin then
          begin
            daySumMin:=daySum;
            dayMinJ:=j
          end;
        daySum:=0
      end;
    writeln('Улей с минимальным сбором ',dayMinJ)
  end;
  
procedure Task10;
  begin
    daySum:=0;
    daySumMax:=0;
    dayMaxJ:=1;
    for j:=1 to n do
      begin
        for i:=1 to N do
          daySum:=daySum+a[i,j];
        if daySum>daySumMax then
          begin
            daySumMax:=daySum;
            dayMaxJ:=j
          end;
        daySum:=0
      end;
    writeln('Улей с максимальным сбором ',dayMaxJ)
  end;
begin
{
  writeln('Введите масcив');
  for i:=1 to N do
    for j:=1 to N do
      readln(a[i,j]);
}
  a:=CM;
  writeln('решение пункта 1 :');
  Task01;
  writeln('решение пункта 2 :');
  Task02;
  writeln('решение пункта 3 :');
  Task03;
  writeln('решение пункта 4 :');
  Task04;
  writeln('решение пункта 5 :');
  Task05;
  writeln('решение пункта 6 :');
  Task06;
  writeln('решение пункта 7 :');
  Task07;
  writeln('решение пункта 8 :');
  Task08;
  writeln('решение пункта 9 :');
  Task09;
  writeln('решение пункта 10 :');
  Task10
end.
