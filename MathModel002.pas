Program MathModel002;
  const N=3;
var
  appleBox : array[1..N] of integer;
  iter, appleFromKolhoz : integer;
  flagAppleBox : boolean;
begin
  writeln('Заполните ящик = ');
  for iter:=1 to N do read(appleBox[iter]);

  iter:=0;
  repeat
        write('поток='); readln(appleFromKolhoz);
        if appleFromKolhoz>0 then
           begin
             flagAppleBox:=false;
             repeat
               iter:=iter+1;
               if appleBox[iter]<0 then
                 begin
                    appleBox[iter]:=appleFromKolhoz;
                    flagAppleBox:=true;
                 end;
//writeln('   appleFromKolhoz=',appleFromKolhoz,'       iter =',iter,'      appleBox[iter]=',appleBox[iter])
             until (flagAppleBox)or(iter = N);
//writeln('****   appleFromKolhoz=',appleFromKolhoz,'       iter =',iter,'      appleBox[iter]=',appleBox[iter])
           end
      until iter=N;

   for iter:=1 to N do
   writeln(appleBox[iter])
end.
