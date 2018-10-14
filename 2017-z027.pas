Program z027_2018;
const N = 5;

type typeShop = record
  name : string;
  kolvo : integer;
  summa : real;
  flag : boolean;
end;

type typeShopResult = record
  name : string;
  kolvo : integer;
  summa : real;
end;

var arrShop1, arrShop2, arrShop3 : array[1..N]of typeShop;
    arrResult : array[1..N*3]of typeShopResult;
    fShop1, fShop2, fShop3, fShopAll : text;
    i, j, k : integer;
    
function retStr(s : string; a,b : integer): string;
var s0 : string;
    i : integer;
begin
  s0:='';
  for i:=a to b do s0:=s0+s[i];
  retStr:=s0;
end;

procedure getFileInArray(f : text; var arr : array[1..N]of typeShop);
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
    arr[i].flag:=true;
    i:=i+1;
  end;
  close(f);
end;

procedure checkName(var a, b : integer; var arr1, arr2 : array[1..N]of typeShop; var arrRes : array[1..N*3]of typeShopResult);
begin
  if arr1[a].name = arr2[b].name then
    begin
      arrRes[a].kolvo:=arrRes[a].kolvo + arr2[b].kolvo;
      arrRes[a].summa:=arrRes[a].summa + arr2[b].summa;
      arr2[b].flag:=false;
    end;
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

procedure getArrayInFile(f : text; a : array[1..N*3]of typeShopResult);
var i : integer;
    s : string;
begin
  rewrite(f);
  i:=1;
  repeat
    s:=makeToTempStr(a[i].name,'right',30) + '|' + makeToTempStr(IntToStr(a[i].kolvo),'left',8) + '|' + makeToTempStr(FloatToStr(a[i].summa),'left',10) + '.00|';
    writeln(f, s);
    i:=i+1;
  until a[i].name = '';
  close(f);
end;

begin
//  writeln(retStr('123456789',2,5));
  Assign(fShop1,'d:/pluspascal/shop-1.txt');
  Assign(fShop2,'d:/pluspascal/shop-2.txt');
  Assign(fShop3,'d:/pluspascal/shop-3.txt');
  Assign(fShopAll,'d:/pluspascal/shop-all.txt');
  getFileInArray(fShop1, arrShop1);
  getFileInArray(fShop2, arrShop2);
  getFileInArray(fShop3, arrShop3);

  for i:=1 to N do
    begin
      arrResult[i].name:=arrShop1[i].name;
      arrResult[i].kolvo:=arrShop1[i].kolvo;
      arrResult[i].summa:=arrShop1[i].summa;
      for j:=1 to N do
        checkName(i, j, arrShop1, arrShop2, arrResult);
      for j:=1 to N do
        checkName(i, j, arrShop1, arrShop3, arrResult);
    end;

  i:=i+1;
  for j:=1 to N do
    if arrShop2[j].flag then
      begin
        arrResult[i].name:=arrShop2[j].name;
        arrResult[i].kolvo:=arrShop2[j].kolvo;
        arrResult[i].summa:=arrShop2[j].summa;
        for k:=1 to N do
          if arrShop2[j].name = arrShop3[k].name then
            begin
              arrResult[i].kolvo:=arrResult[i].kolvo + arrShop3[k].kolvo;
              arrResult[i].summa:=arrResult[i].summa + arrShop3[k].summa;
              arrShop3[k].flag:=false;
            end;
        i:=i+1;
      end;

  for j:=1 to N do
    if arrShop3[j].flag then
      begin
        arrResult[i].name:=arrShop3[j].name;
        arrResult[i].kolvo:=arrShop3[j].kolvo;
        arrResult[i].summa:=arrShop3[j].summa;
        i:=i+1;
      end;
{
  for i:=1 to N*3 do
    begin
      write(arrResult[i].name,'|');
      write(arrResult[i].kolvo,'|');
      write(arrResult[i].summa,'|');
      writeln;
    end;
}
  getArrayInFile(fShopAll, arrResult);
end.