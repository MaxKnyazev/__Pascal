program MAX34;
var
  s0,s,s1,s2,s3:string;
  k,t,i:integer;
begin
  s1:='';
  s2:='';
  s3:='';
  repeat
    write('введите s=');
    read(s);
    k:=length(s);
    if s='.' then
      begin
        t:=length(s1);
        s0:='';
        for i:=1 to t-1 do s0:=s0+s1[i];
        s1:=s0;
        
        t:=length(s2);
        s0:='';
        for i:=1 to t-1 do s0:=s0+s2[i];
        s2:=s0;
        
        t:=length(s3);
        s0:='';
        for i:=1 to t-1 do s0:=s0+s3[i];
        s3:=s0;
      end
    else
      if k=1 then s1:=s1+s+'-'
           else if k=2 then s2:=s2+s+'-'
                       else if k=3 then s3:=s3+s+'-';
  until s='.';
  writeln('s1=',s1);
  writeln('s2=',s2);
  writeln('s3=',s3);
end.
