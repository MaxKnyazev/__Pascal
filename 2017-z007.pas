Program z007_2017;
const arr : array[1..10] of char = ('a','e','c','0','u','b','t','j','a','1');

type CharSet = set of char;
var cs, cs2 : CharSet;
    i : integer;
    ch : char;
    
begin
  cs:=['a'..'c'];
  cs:=cs + ['0']; // прямое добавление
  Include(cs,'1'); // добавление с помощью функции include
  for i:=1 to 10 do
    if arr[i] in cs then
      writeln(arr[i]);
//*******************************
  for ch:='a' to 'h' do
    cs2:=cs2 + [ch];
//*******************************
  writeln('-----------------');
//*******************************
  for ch:='a' to 'h' do
    begin
    Include(cs2,ch);
    if ch in cs2 then
      writeln(ch);
    end;
end.