Program accent;
const N = 3;
  wordsTrueConst : array[1..N] of string = ('фенќмен','клјла','столяр');
  wordsFalseConst : array[1..N] of string = ('феном≈н','клалј','стќл€р');

var rndFirst, rndSecond, enter : integer;
   wordsTrue : array[1..N] of string;
   wordsFalse : array[1..N] of string;
{
procedure writeMas(a : integer);
var i, chislo : integer;
begin
  chislo:=random(2);
  if chislo = 0 then
    writeln(wordsTrue[a])
end;
}
procedure writeMas(a : array[1..N] of string);
var i : integer;
begin
  for i:=1 to N do
    writeln(a[i]);

end;

procedure writeWords(s1 : string; s2 : string; random : integer);
begin
  if random=0 then
    write('1.',s1,'  2.',s2,'  ? = ')
  else
    write('1.',s2,'  2.',s1,'  ? = ');
end;

function checkTrueOrFalse : boolean;
begin
  if rndFirst = 0 then
    if enter = 1 then
      checkTrueOrFalse:=true
    else
      checkTrueOrFalse:=false;
  if rndFirst = 1 then
    if enter = 2 then
      checkTrueOrFalse:=true
    else
      checkTrueOrFalse:=false
end;

procedure ifTrue(a : integer);
begin
  writeln('ѕравильно! ',wordsTrue[a]);
  wordsTrue[a]:='';
  wordsFalse[a]:='';
end;

procedure ifFalse(a : integer);
begin
  writeln('Ќ≈ ѕ–ј¬»Ћ№Ќќ! ѕравильный ответ : ',wordsTrue[a]);
end;

function gameOver : boolean;
var i : integer;
begin
  gameOver:=true;
  for i:=1 to N do
    if wordsTrue[i]<>''then
      gameOver:=false
end;

begin
  wordsTrue:=wordsTrueConst;
  wordsFalse:=wordsFalseConst;
//  writeMas(wordsTrue);
//  writeMas(wordsFalse);
  repeat
    repeat
      rndSecond:=random(3)+1
    until wordsTrue[rndSecond]<>'';
    rndFirst:=random(2);
    writeWords(wordsTrue[rndSecond],wordsFalse[rndSecond],rndFirst);
    readln(enter);
    if checkTrueOrFalse then
      ifTrue(rndSecond)
    else
      ifFalse(rndSecond);
  until gameOver=true;
  writeln('»гра окончена!!!')
end.