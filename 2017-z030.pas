Program z030_2018;
const findConst = 'Шоколад';
      N = 5;
      
type typeShop = record
  name : string;
  kolvo : integer;
  summa, price : real;
end;

var fCandy, fSladko, fIris, fChocolate : text;
    find : string;
    i, j : integer;
    arrShop : array[1..N*3]of typeShop;
    flag : boolean;
    temp : typeShop;
    
function retStr(s : string; a,b : integer): string;
var s0 : string;
    i : integer;
begin
  s0:='';
  for i:=a to b do s0:=s0+s[i];
  retStr:=s0;
end;

procedure getFileInArray(f : text; var arr : array[1..N*3]of typeShop; var i : integer);
var s : string;
begin
  reset(f);
  while not eof(f)do
  begin
    readln(f, s);
    if retStr(s, 1, 39) = find then
      begin
        arr[i].name:=retStr(s, 1, 39);
        arr[i].kolvo:=StrToInt(retStr(s, 41, 49));
        arr[i].price:=StrToFloat(retStr(s, 51, 64));
        arr[i].summa:=StrToFloat(retStr(s, 66, 79));
        i:=i+1;
      end;
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
          s:=makeToTempStr(a[i].name,'right',39) + '|' + makeToTempStr(IntToStr(a[i].kolvo),'left',8) + '|' + makeToTempStr(FloatToStr(a[i].price),'left',13) + '.00' + '|' + makeToTempStr(FloatToStr(a[i].summa),'left',13) + '.00|';
          writeln(f, s);
        end;
    end;
  close(f);
end;

begin
  Assign(fCandy,'d:/pluspascal/fCandy.txt');
  Assign(fSladko,'d:/pluspascal/fSladko.txt');
  Assign(fIris,'d:/pluspascal/fIris.txt');
  Assign(fChocolate,'d:/pluspascal/fChocolate.txt');

  find:=findConst;
  for i:=1 to 39-length(find)do
    find:=find+' ';
//  writeln(find,'|');

  i:=1;
  getFileInArray(fCandy, arrShop, i);
  getFileInArray(fSladko, arrShop, i);
  getFileInArray(fIris, arrShop, i);

{
  for i:=1 to N do
    writeln(arrShop[i].name,'|',arrShop[i].kolvo,'|',arrShop[i].price,'|',arrShop[i].summa,'|');
}

  repeat
    flag:=true;
    for i:=1 to (N*3)-1 do
      if (arrShop[i].price > arrShop[i+1].price)and(arrShop[i].name<>'')and(arrShop[i+1].name<>'') then
        begin
          temp:=arrShop[i];
          arrShop[i]:=arrShop[i+1];
          arrShop[i+1]:=temp;
          flag:=false
        end;
  until flag = true;
{
  for i:=1 to N do
    writeln(arrShop[i].name,'|',arrShop[i].kolvo,'|',arrShop[i].price,'|',arrShop[i].summa,'|');
}
 getArrayInFile(fChocolate, arrShop)
end.