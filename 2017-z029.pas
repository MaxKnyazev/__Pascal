Program z029_2018;
const N = 5;

type typeShop = record
  name : string;
  kolvo : integer;
  summa : real;
end;

var arrShop : array[1..N*3]of typeShop;
    fShop1, fShop2, fShop3, fShopAll : text;
    i, j, k : integer;
    s : string;
    flag : boolean;
    
function retStr(s : string; a,b : integer): string;
var s0 : string;
    i : integer;
begin
  s0:='';
  for i:=a to b do s0:=s0+s[i];
  retStr:=s0;
end;

procedure getFileInArray(f : text; var arr : array[1..N*3]of typeShop);
var i : integer;
    s, name, kolvo, summa : string;
begin
  reset(f);
  i:=1;
  while not eof(f)do
  begin
    readln(f, s);
    name:=retStr(s, 1, 30);
    kolvo:=retStr(s, 32, 40);
    summa:=retStr(s, 42, 55);
    kolvo:=trim(kolvo);
    summa:=trim(summa);
    arr[i].name:=name;
    arr[i].kolvo:=strToInt(kolvo);
    arr[i].summa:=strToFloat(summa);
    i:=i+1;
  end;
  close(f);
end;

function makeToTempStr(s, direction : string; kol : integer) : string;
var delta, i : integer;
begin
  if direction = 'left' then
    begin
      delta:=kol-length(s);
      for i:=1 to delta do
        s:=' '+s;
    end;
  if direction = 'right' then
    begin
      delta:=kol-length(s);
      for i:=1 to delta do
        s:=s+' ';
    end;
  makeToTempStr:=s;
end;

procedure getArrayInFile(f : text; a : array[1..N*3]of typeShop);
var i : integer;
    s : string;
begin
  rewrite(f);
  i:=1;
  for i:=1 to N*3 do
    begin
      if a[i].name <> '' then
        begin
          s:=makeToTempStr(a[i].name,'right',30) + '|' + makeToTempStr(IntToStr(a[i].kolvo),'left',8) + '|' + makeToTempStr(FloatToStr(a[i].summa),'left',10) + '.00|';
          writeln(f, s);
        end;
    end;
  close(f);
end;

begin
  Assign(fShop1,'d:/pluspascal/shop-1.txt');
  Assign(fShop2,'d:/pluspascal/shop-2.txt');
  Assign(fShop3,'d:/pluspascal/shop-3.txt');
  Assign(fShopAll,'d:/pluspascal/shop-all.txt');
  getFileInArray(fShop1, arrShop);

  reset(fShop2);
  reset(fShop3);
  k:=N;
  flag:=true;
  for i:=1 to N do
    begin
      flag:=true;
      readln(fShop2, s);
      for j:=1 to k do
        if retStr(s, 1, 30) = arrShop[j].name then
          begin
            flag:=false;
            arrShop[j].kolvo:=arrShop[j].kolvo + StrToInt(retStr(s, 32, 40));
            arrShop[j].summa:=arrShop[j].summa + StrToFloat(retStr(s, 42, 55));
          end;
      if flag then
        begin
          k:=k+1;
          arrShop[k].name:=retStr(s, 1, 30);
          arrShop[k].kolvo:=StrToInt(retStr(s, 32, 40));
          arrShop[k].summa:=StrToFloat(retStr(s, 42, 55));
        end;
      flag:=true;
      readln(fShop3, s);
      for j:=1 to k do
        if retStr(s, 1, 30) = arrShop[j].name then
          begin
            flag:=false;
            arrShop[j].kolvo:=arrShop[j].kolvo + StrToInt(retStr(s, 32, 40));
            arrShop[j].summa:=arrShop[j].summa + StrToFloat(retStr(s, 42, 55));
          end;
      if flag then
        begin
          k:=k+1;
          arrShop[k].name:=retStr(s, 1, 30);
          arrShop[k].kolvo:=StrToInt(retStr(s, 32, 40));
          arrShop[k].summa:=StrToFloat(retStr(s, 42, 55));
        end;
    end;

  getArrayInFile(fShopAll, arrShop);
  close(fShop2);
  close(fShop3);
end.