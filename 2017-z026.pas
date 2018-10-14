Program z026_2018;
const N = 5;

type shopType = record;
  name : string;
  kolvo : integer;
  summa : real;
  flag : boolean;
end;

var fShop1, fShop2, fShop3, fShopAll : text;
    shopArrResult : array[1..N*3]of shopType;
    shopArr1 : array[1..N]of shopType;
    shopArr2 : array[1..N]of shopType;
    shopArr3 : array[1..N]of shopType;
    i, j, k : integer;
    
function retStr(s : string; a,b : integer): string;
var s0 : string;
    i : integer;
begin
  s0:='';
  for i:=a to b do s0:=s0+s[i];
  retStr:=s0;
end;

procedure getFileInArray(f : text; var arr : array[1..N]of shopType);
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

procedure checkName(a, b, c : integer; var arr1, arr2 : array[1..N]of shopType; var arrResult : array[1..N*3]of shopType);
begin
  if (arr1[b].name = arr2[c].name)and(arr1[c].flag=true) then
    begin
      arrResult[a].kolvo:=arrResult[a].kolvo+arr2[c].kolvo;
      arrResult[a].summa:=arrResult[a].summa+arr2[c].summa;
      arr2[c].flag:=false;
    end;
end;

procedure getArrayInFile(var f : text; arr : array[1..N*3]of shopType);
var i : integer;
    s : string;
    
begin
  rewrite(f);
  for i:=1 to N*3 do
    begin
      s:=arr[i].name+'|'+IntToStr(arr[i].kolvo)+'|'+FloatToStr(arr[i].summa)+'|';
      writeln(f, s);
    end;


  close(f);
end;

begin
  Assign(fShop1,'d:/pluspascal/shop-1.txt');
  Assign(fShop2,'d:/pluspascal/shop-2.txt');
  Assign(fShop3,'d:/pluspascal/shop-3.txt');
  Assign(fShopAll,'d:/pluspascal/shop-all.txt');
  getFileInArray(fShop1, shopArr1);
  getFileInArray(fShop2, shopArr2);
  getFileInArray(fShop3, shopArr3);
{
  for i:=1 to N do
    begin
      write(shopArr1[i].name,'|');
      write(shopArr1[i].kolvo,'|');
      write(shopArr1[i].summa,'|');
      writeln;
    end;
}
  for i:=1 to N do
    begin
      shopArr1[i].flag:=true;
      shopArr2[i].flag:=true;
      shopArr3[i].flag:=true;
    end;
  
  i:=1;
  for j:=1 to N do
    begin
      shopArrResult[i].name:=shopArr1[j].name;
      shopArrResult[i].kolvo:=shopArr1[j].kolvo;
      shopArrResult[i].summa:=shopArr1[j].summa;
      for k:=1 to N do
        checkName(i, j, k, shopArr1, shopArr2, shopArrResult);
      for k:=1 to N do
        checkName(i, j, k, shopArr1, shopArr3, shopArrResult);
      i:=i+1;
    end;

  for j:=1 to N do
    if shopArr2[j].flag = true then
      begin
        shopArrResult[i].name:=shopArr2[j].name;
        shopArrResult[i].kolvo:=shopArr2[j].kolvo;
        shopArrResult[i].summa:=shopArr2[j].summa;
        for k:=1 to N do
          checkName(i, j, k, shopArr2, shopArr3, shopArrResult);
        i:=i+1;
      end;
        
  for j:=1 to N do
    if shopArr3[j].flag = true then
      begin
        shopArrResult[i].name:=shopArr3[j].name;
        shopArrResult[i].kolvo:=shopArr3[j].kolvo;
        shopArrResult[i].summa:=shopArr3[j].summa;
        i:=i+1;
      end;

  getArrayInFile(fShopAll, shopArrResult);

{
for i:=1 to N*3 do
begin
  write(shopArrResult[i].name,'|');
  write(shopArrResult[i].kolvo,'|');
  write(shopArrResult[i].summa,'|');
  writeln;
end;
}
end.