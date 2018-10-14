Program z031_2018;
const N = 5;
      
type typeShop = record
  name : string;
  kolvo : integer;
  summa, price : real;
end;

var fCandy, fSladko, fIris, fChocolate : text;
    i, j : integer;
    arrShop : array[1..N*3]of typeShop;
    flag : boolean;
    temp0 : typeShop;

function retStr(s : string; a,b : integer): string;
var s0 : string;
    i : integer;
begin
  s0:='';
  for i:=a to b do s0:=s0+s[i];
  retStr:=s0;
end;

function collectAllStr(s : string): typeShop;
var  temp : typeShop;
     i : integer;
begin
  i:=0;
  repeat
    i:=i+1;
  until s[i] = '|';
  temp.name:=retStr(s, 1, i-1);
  Delete(s, 1, i);

  i:=0;
  repeat
    i:=i+1;
  until s[i] = '|';
  temp.kolvo:=StrToInt(retStr(s, 1, i-1));
  Delete(s, 1, i);

  i:=0;
  repeat
    i:=i+1;
  until s[i] = '|';
  temp.price:=StrToFloat(retStr(s, 1, i-1));
  Delete(s, 1, i);

  i:=0;
  repeat
    i:=i+1;
  until s[i] = '|';
  temp.summa:=StrToFloat(retStr(s, 1, i-1));
  Delete(s, 1, i);

  collectAllStr:=temp;
end;

procedure recycleFile(f : text);
var s : string;
begin
  reset(f);
  while not eof(f) do
  begin
    readln(f, s);
    temp0:=collectAllStr(s);
    if Pos('ØÎÊÎËÀÄ',UpperCase(temp0.name))>0 then
      begin
        arrShop[j]:=temp0;
        j:=j+1;
      end;
  end;
  close(f);
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
          s:=a[i].name + '|' + IntToStr(a[i].kolvo) + '|' + FloatToStr(a[i].price) + '.00' + '|' + FloatToStr(a[i].summa) + '.00|';
          writeln(f, s);
        end;
    end;
  close(f);
end;

begin
  Assign(fCandy,'d:/pluspascal/07-candy.txt');
  Assign(fSladko,'d:/pluspascal/07-sladko.txt');
  Assign(fIris,'d:/pluspascal/07-iris.txt');
  Assign(fChocolate,'d:/pluspascal/07-chocolate.txt');

  j:=1;
  recycleFile(fCandy);
  recycleFile(fSladko);
  recycleFile(fIris);

  repeat
    flag:=true;
    for i:=1 to (N*3)-1 do
      if (arrShop[i].price > arrShop[i+1].price)and(arrShop[i].name<>'')and(arrShop[i+1].name<>'') then
        begin
          temp0:=arrShop[i];
          arrShop[i]:=arrShop[i+1];
          arrShop[i+1]:=temp0;
          flag:=false
        end;
  until flag = true;

  getArrayInFile(fChocolate, arrShop);
end.
