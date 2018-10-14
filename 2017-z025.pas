Program z025_2018;

var fInn, fSnils, fPhone, fAll : text;
    s, s0, sResult, s1, s2 : string;
    arrTemp : array[1..7]of string;
    i : integer;
    
function retStr(s : string; a,b : integer): string;
var s0 : string;
    i : integer;
begin
  s0:='';
  for i:=a to b do s0:=s0+s[i];
  retStr:=s0;
end;

//гюоннннннлмхрэ!!!
function findStrToFile(s : string; a,b : integer; f : text): string;
var sTemp, fio,ss : string;
begin
  reset(f);
  while not eof(f) do
  begin
    readln(f, sTemp);
    fio:=retStr(sTemp, 1, 30);
    if fio = s then
    begin
      findStrToFile:=retStr(sTemp, a, b);
      break;
    end;
  end;
  close(f);
end;

begin
  Assign(fInn,'d:/pluspascal/clnt-inn.txt');
  Assign(fSnils,'d:/pluspascal/clnt-snils.txt');
  Assign(fPhone,'d:/pluspascal/clnt-phone.txt');
  Assign(fAll,'d:/pluspascal/clnt-all.txt');
  
  reset(fInn);
  rewrite(fAll);

  while not eof(fInn) do
  begin
    sResult:='';
    readln(fInn,s);
    sResult:=sResult+s;
    s0:=retStr(s,1,30);
    s1:=findStrToFile(s0,32,45,fSnils);
    sResult:=sResult+s1;
    s2:=findStrToFile(s0,32,47,fPhone);
    sResult:=sResult+'|'+s2;
    arrTemp[StrToInt(sResult[length(sResult)-1])]:=sResult;
  end;

  for i:=1 to 7 do
    writeln(fAll, arrTemp[i]);

  close(fInn);
  close(fAll);
end.