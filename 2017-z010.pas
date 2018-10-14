Program z010_2017;
Type
  player = record;
    name : string;
    time : integer;
  end;{record}

  team = record;
    players : array[1..3]of player;
  end;{record}

  tournament = record;
    teams : array[1..5]of team;
  end;{record}

var t : tournament;
    i, temp : integer;
    sumThreeElem  : real;
    
    
function midArif(a,b,c : integer) : real;
begin
  midArif:=(a+b+c)/3;
end;


begin
  temp:=0;
  sumThreeElem:=maxInt;
  t.teams[1].players[1].time:=1;
  t.teams[1].players[2].time:=1;
  t.teams[1].players[3].time:=1;
  t.teams[1].players[1].name:='1.1';
  t.teams[1].players[2].name:='1.2';
  t.teams[1].players[3].name:='1.3';
  t.teams[2].players[1].time:=2;
  t.teams[2].players[2].time:=2;
  t.teams[2].players[3].time:=2;
  t.teams[2].players[1].name:='2.1';
  t.teams[2].players[2].name:='2.2';
  t.teams[2].players[3].name:='2.3';
  t.teams[3].players[1].time:=3;
  t.teams[3].players[2].time:=3;
  t.teams[3].players[3].time:=3;
  t.teams[3].players[1].name:='3.1';
  t.teams[3].players[2].name:='3.2';
  t.teams[3].players[3].name:='3.3';
  t.teams[4].players[1].time:=4;
  t.teams[4].players[2].time:=4;
  t.teams[4].players[3].time:=4;
  t.teams[4].players[1].name:='4.1';
  t.teams[4].players[2].name:='4.2';
  t.teams[4].players[3].name:='4.3';
  t.teams[5].players[1].time:=5;
  t.teams[5].players[2].time:=5;
  t.teams[5].players[3].time:=5;
  t.teams[5].players[1].name:='5.1';
  t.teams[5].players[2].name:='5.2';
  t.teams[5].players[3].name:='5.3';
  for i:=1 to 5 do
    with t.teams[i] do
      begin
        if sumThreeElem > midArif(players[1].time,players[2].time,players[3].time)then
          begin
            sumThreeElem:=midArif(players[1].time,players[2].time,players[3].time);
            temp:=i;
          end;
      end;

//  writeln(temp);

  for i:=1 to 3 do
    writeln(t.teams[temp].players[i].name);
end.