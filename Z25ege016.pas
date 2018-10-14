Program Z25ege016;
const N=5;

type MassivMaxima=array [1..N] of integer;

var
    a: MassivMaxima;
    i, y, x : integer;
    s : real;
begin
  s:=0;
  y:=0;
  x:=0;
  for i:=1 to N do
    readln(a[i]);
  for i:=1 to N do
    if (a[i]>180)and(a[i]<=200)then
      begin
        y:=y+1;
        x:=x+a[i];
      end;
  if y=0
    then
       writeln('Íè îäíîãî ıëåìåíòà áîëüøå 180 íå íàéäåíî/äàííûå ââåäåíû íåâåğíî!')
    else s:=x/y;
  writeln('Ğåçóëüòàò =',s);
{Â óñëîâèÿõ çàäà÷è íàïèñàíî "İëåìåíòû ìàññèâà
ìîãóò ïğèíèìàòü çíà÷åíèÿ îò 150 äî 200",
ïîıòîìó ÿ ğåøèë íàïèñàòü èìåííî òàê}
end.