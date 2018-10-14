program MAX45;
var
   slovo,s:string;
   kolprob,k,i:integer;
begin
   kolprob:=0;
   slovo:='';
   write('¬ведите S=');
   read(s);
   s:=s+' ';
   k:=length(s);
   for i:=1 to k do
     if s[i]<>' ' then
                    begin
                      slovo:=slovo+s[i];
                      kolprob:=0
                    end{if}
                  else
                    begin
                      kolprob:=kolprob+1;
                      if kolprob=1 then
                        begin
                          writeln(slovo);
                          slovo:=''
                        end{if}
                    end{else}
end.