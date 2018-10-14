Program z024_2018;
var s, s1, ph, fio : string;
    clients2, phone : text;
    i : integer;
    
function isPhone(s : string) : boolean;
var i : integer;
begin
  isPhone:=false;
  trim(s);
  if s[1]='(' then
    for i:=2 to length(s)do
      if s[i]='-' then
        begin
          isPhone:=true;
          break
        end;
end;

function isFio(s:string) : boolean;
begin
  isFio:=false;
  trim(s);
  case s[1] of
    'à'..'ÿ','À'..'ß' : isFio:=true;
  end; {case}
end;

begin
  Assign(clients2,'d:/pluspascal/clients22.txt');
  Assign(phone,'d:/pluspascal/phone.txt');
  s:='';
  s1:='';
  reset(clients2);
  rewrite(phone);
  while not eof(clients2) do
  begin
    readln(clients2,s);
    s:=s+';';
    for i:=1 to length(s) do
      if s[i]<>';' then
        s1:=s1+s[i]
      else
        begin
          if isPhone(s1)then ph:=s1;
          if isFio(s1)then fio:=s1;
          s1:=''
        end;
    writeln(phone,fio,' : ',ph);
    fio:='';
    ph:='';
  end;
    
    
    
  close(clients2);
  close(phone);
end.