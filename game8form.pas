uses VCL;

const NConst = 9;
      MConst = 3;
      arrConstTemp : array[1..NConst] of integer = (1,2,3,4,0,5,6,7,8);
var
  arrValueButtons : array[1..3,1..3] of integer;
  arrTemp : array[1..NConst] of integer;
  game8Form: Form;
  b1, b2, b3, b4, b5, b6, b7, b8, b9 : Button;
  lab : TextLabel;
  i, j : integer;
  


procedure arrRandom(var a : array[1..NConst] of integer);
var rnd, n, i, t : integer;
begin
  n:=NConst;
  for i:=1 to NConst do
    begin
      rnd:=random(n)+1;
      t:=a[rnd];
      a[rnd]:=a[n];
      a[n]:=t;
      n:=n-1
    end;
end;

procedure moveArrToArr(var arr1 : array[1..NConst] of integer; var arr2 : array[1..3,1..3] of integer);
var j, k, i : integer;
begin
  j:=1;
  i:=1;
  for k:=1 to NConst do
    begin
      arr2[i,j]:=arr1[k];
      j:=j+1;
      if j=4 then
        begin
          j:=1;
          i:=i+1
        end;
    end;
end;

procedure coordButtons(b : Button; x,y : integer);
begin
  b.Left:=(y-1)*100;
  b.Top:=(x-1)*100;
end;

procedure initButtonsToForm;
var i, j : integer;
begin
  for i:=1 to MConst do
    for j:=1 to MConst do
      begin
        case arrValueButtons[i,j] of
          1: coordButtons(b1,i,j);
          2: coordButtons(b2,i,j);
          3: coordButtons(b3,i,j);
          4: coordButtons(b4,i,j);
          5: coordButtons(b5,i,j);
          6: coordButtons(b6,i,j);
          7: coordButtons(b7,i,j);
          8: coordButtons(b8,i,j);
        end;{case}
      end;
end;

function IfUpClear(i0 : integer; j0 : integer) : boolean;
begin
  IfUpClear:=false;
  if (i0-1 > 0)and(arrValueButtons[i0-1,j0]=0)then
    IfUpClear:=true;
end;


function IfDownClear(i0 : integer; j0 : integer) : boolean;
begin
  IfDownClear:=false;
  if (i0+1 < 4)and(arrValueButtons[i0+1,j0]=0)then
    IfDownClear:=true;
end;

function IfLeftClear(i0 : integer; j0 : integer) : boolean;
begin
  IfLeftClear:=false;
  if (j0-1 > 0)and(arrValueButtons[i0,j0-1]=0)then
    IfLeftClear:=true;
end;

function IfRightClear(i0 : integer; j0 : integer) : boolean;
begin
  IfRightClear:=false;
  if (j0+1 < 4)and(arrValueButtons[i0,j0+1]=0)then
    IfRightClear:=true;
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
{
procedure MoveElementsArr;
begin
  if IfUpClear(iElem,jElem) then ReplaceUp(iElem,jElem,arr);
  if IfDownClear(iElem,jElem) then ReplaceDown(iElem,jElem,arr);
  if IfLeftClear(iElem,jElem) then ReplaceLeft(iElem,jElem,arr);
  if IfRightClear(iElem,jElem) then ReplaceRight(iElem,jElem,arr)
end;
}
procedure b1Click;
begin

end;

procedure b2Click;
begin
  if IfDownClear(1,2) then b2.Top:=b2.Top-100;
end;

procedure b3Click;
begin

end;

procedure b4Click;
begin
  if IfRightClear(2,1) then b4.Top:=b4.Top-100;
end;

procedure b5Click;
begin
  if IfLeftClear(2,3) then b5.Top:=b5.Top-100;
end;

procedure b6Click;
begin

end;

procedure b7Click;
begin
  if IfUpClear(3,2) then b7.Top:=b7.Top-100;
end;

procedure b8Click;
begin

end;

begin

//Form.Create(x-координатаЋев¬ерхнего”гла, y-координатаЋев¬ерхнего”гла, ширина, высота)
  game8Form := Form.Create(70,70,1100,400);
  game8Form.Caption := '¬осьмашки';
  
  arrTemp:=arrConstTemp;
//  arrRandom(arrTemp);
  moveArrToArr(arrTemp, arrValueButtons);

  b1 := Button.Create(0,0,100,100);
  b1.Caption := '1';
  b1.OnClick := b1Click;

  b2 := Button.Create(0,0,100,100);
  b2.Caption := '2';
  b2.OnClick := b2Click;

  b3 := Button.Create(0,0,100,100);
  b3.Caption := '3';
  b3.OnClick := b3Click;

  b4 := Button.Create(0,0,100,100);
  b4.Caption := '4';
  b4.OnClick := b4Click;
  
  b5 := Button.Create(0,0,100,100);
  b5.Caption := '5';
  b5.OnClick := b5Click;
  
  b6 := Button.Create(0,0,100,100);
  b6.Caption := '6';
  b6.OnClick := b6Click;
  
  b7 := Button.Create(0,0,100,100);
  b7.Caption := '7';
  b7.OnClick := b7Click;
  
  b8 := Button.Create(0,0,100,100);
  b8.Caption := '8';
  b8.OnClick := b8Click;

//****************************************************

  lab := TextLabel.Create(300,300,'');
//  for i:=1 to NConst do
//      lab.Caption :=lab.Caption + '  ' + IntToStr(arrTemp[i]);
  for i:=1 to MConst do
    for j:=1 to MConst do
      lab.Caption :=lab.Caption + '  ' + IntToStr(arrValueButtons[i,j]);
      
      
      
      
  initButtonsToForm;

  
end.

{
procedure WriteRandom;
var rnd, n, i, t : integer;
begin
  n:=NConst;
  for i:=1 to NConst do
    begin
      rnd:=random(n)+1;
      writeln(a[rnd]);
      t:=a[rnd];
      a[rnd]:=a[n];
      a[n]:=t;
      n:=n-1
    end;
}