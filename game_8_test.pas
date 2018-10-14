Program game_8;
const aConst : array[1..3,1..3] of integer =((1, 2, 3),
                                             (4, 5, 6),
                                             (7, 8, 0));

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
{
  for i:=0 to 255 do
    if i in setGame8 then writeln(i,' ');
}

end;

procedure GameOver;
var i, j, temp, count : integer;
begin
//  GameOver:=false;
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
              count:=count+1;
            end;
            writeln('>>>>>>> ',count)
          end;
//      if count = 9 then
//        GameOver:=true;
    end
end;

begin
arr:=aConst;
//  SetArrayRandomNumber(arr);
  arrPrint;
  GameOver;
end.