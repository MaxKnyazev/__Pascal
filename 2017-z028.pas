Program z028_2018;
const N = 5;

type typeShop = record
  name : string;
  kolvo : integer;
  summa : real;
end;

var arrShop : array[1..N*3]of typeShop;
    fShop1, fShop2, fShop3, fShopAll : text;
    i, j : integer;
    
function retStr(s : string; a,b : integer): string;
var s0 : string;
    i : integer;
begin
  s0:='';
  for i:=a to b do s0:=s0+s[i];
  retStr:=s0;
end;

procedure AA(var i : integer; var arr : array[1..N*3]of typeShop; f : text);
var s, a, b, c : string;
begin
  while not eof(f) do
  begin
    readln(f, s);
    a:=retStr(s, 1, 30);
    b:=retStr(s, 32, 40);
    c:=retStr(s, 42, 55);
    b:=trim(b);
    c:=trim(c);
    arr[i].name:=a;
    arr[i].kolvo:=strToInt(b);
    arr[i].summa:=strToFloat(c);
    i:=i+1;
  end;
end;

procedure getFileInArray(f1, f2, f3 : text; var arr : array[1..N*3]of typeShop);
var i : integer;
begin
  reset(f1);
  reset(f2);
  reset(f3);
  i:=1;
  AA(i, arr, f1);
  AA(i, arr, f2);
  AA(i, arr, f3);
  close(f1);
  close(f2);
  close(f3);
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
      if a[i].name <> '0' then
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
  getFileInArray(fShop1, fShop2, fShop3, arrShop);
  for i:=1 to N*3 do
    for j:=i+1 to N*3 do
      if arrShop[i].name = arrShop[j].name then
        begin
          arrShop[i].kolvo:=arrShop[i].kolvo + arrShop[j].kolvo;
          arrShop[i].summa:=arrShop[i].summa + arrShop[j].summa;
          arrShop[j].name:='0';
        end;
{
  for i:=1 to N*3 do
  begin
    writeln(arrShop[i].name,'|',arrShop[i].kolvo,'|',arrShop[i].summa,'|');
  end;
}
  getArrayInFile(fShopAll, arrShop);
end.