Program game_8;
{
const aConst : array[1..3,1..3] of integer =((1, 2, 3),
                                             (4, 5, 6),
                                             (7, 0, 8));
}

var iElem, jElem, readElem : integer;
                       arr : array[1..3,1..3] of integer;

procedure arrPrint;
var i, j : integer;
begin
  writeln('|---+---+---|');
  for i:=1 to 3 do
    begin
      write('| ');
      for j:=1 to 3 do
        begin
          if arr[i,j]=0 then
            write('  ','| ')
          else
            write(arr[i,j],' | ');
        end;
      writeln;
      writeln('|---+---+---|');
    end;
  writeln
  end;

function IfUpClear(i0 : integer; j0 : integer) : boolean;
begin
  IfUpClear:=false;
  if (i0-1 > 0)and(arr[i0-1,j0]=0)then
    IfUpClear:=true;
end;

function IfDownClear(i0 : integer; j0 : integer) : boolean;
begin
  IfDownClear:=false;
  if (i0+1 < 4)and(arr[i0+1,j0]=0)then
    IfDownClear:=true;
end;

function IfLeftClear(i0 : integer; j0 : integer) : boolean;
begin
  IfLeftClear:=false;
  if (j0-1 > 0)and(arr[i0,j0-1]=0)then
    IfLeftClear:=true;
end;

function IfRightClear(i0 : integer; j0 : integer) : boolean;
begin
  IfRightClear:=false;
  if (j0+1 < 4)and(arr[i0,j0+1]=0)then
    IfRightClear:=true;
end;

procedure FindElement(numer : integer);
var i, j : integer;
begin
  for i:=1 to 3 do
    for j:=1 to 3 do
      begin
        if arr[i,j]=numer then
          begin
            iElem:=i;
            jElem:=j;
            break
          end
      end;
end;

procedure ReplaceUp(i0 : integer; j0 : integer; var a : array[1..3,1..3] of integer);
begin
  a[i0-1,j0]:=a[i0,j0];
  a[i0,j0]:=0
end;

procedure ReplaceDown(i0 : integer; j0 : integer; var a : array[1..3,1..3] of integer);
begin
  a[i0+1,j0]:=a[i0,j0];
  a[i0,j0]:=0
end;

procedure ReplaceLeft(i0 : integer; j0 : integer; var a : array[1..3,1..3] of integer);
begin
  a[i0,j0-1]:=a[i0,j0];
  a[i0,j0]:=0
end;

procedure ReplaceRight(i0 : integer; j0 : integer; var a : array[1..3,1..3] of integer);
begin
  a[i0,j0+1]:=a[i0,j0];
  a[i0,j0]:=0
end;

procedure MoveElementsArr;
begin
  if IfUpClear(iElem,jElem) then ReplaceUp(iElem,jElem,arr);
  if IfDownClear(iElem,jElem) then ReplaceDown(iElem,jElem,arr);
  if IfLeftClear(iElem,jElem) then ReplaceLeft(iElem,jElem,arr);
  if IfRightClear(iElem,jElem) then ReplaceRight(iElem,jElem,arr)
end;

function GameOver : boolean;
var i, j, temp, count : integer;
begin
  GameOver:=false;
  count:=0;
  if arr[3,3]=0 then
    begin
      temp:=0;
      for i:=1 to 3 do
        for j:=1 to 3 do
          begin
            if arr[i,j]>temp then
              begin
                temp:=arr[i,j];
                count:=count+1
              end
          end;
      if count = 8 then
        GameOver:=true;
    end
end;

procedure SetArrayRandomNumber(var a : array[1..3,1..3] of integer);
var i, j, temp : integer;
      setGame8 : set of 0..8;
begin
  setGame8:=[];
  for i:=1 to 3 do
    for j:=1 to 3 do
      a[i,j]:=-1;
  for i:=1 to 3 do
    for j:=1 to 3 do
      begin
        repeat
          temp:=Random(9)
        until temp in setGame8 = false;
        Include(setGame8,temp);
        a[i,j]:=temp
      end;
end;

begin
  SetArrayRandomNumber(arr);
  iElem:=0;
  jElem:=0;
  arrPrint;
  repeat
        write('Âàø õîä : '); readln(readElem);
        FindElement(readElem);
        MoveElementsArr;
        arrPrint
  until GameOver;
  if GameOver then
    writeln('ÈÃĞÀ ÎÊÎÍ×ÅÍÀ !')
end.