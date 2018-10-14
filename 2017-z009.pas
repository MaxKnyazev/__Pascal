Program z010_2017;
type
  pasp = record;
    line : integer;
    num : integer;
  end; {record}

person=record;
  name : string;
  fam : string;
  years : integer;
  pasport :pasp;
end; {record}

family=record;
  adress : string;
  persons : array[1..2]of person;
end; {record}

house=record;
  countKv : integer;
  countP : integer;
  familes : array[1..30]of family;

end; {record}

var h : house;
    i : integer;
    
begin
//  readln(f.adress);
  for i:=1 to 2 do
    begin
      readln(h.familes[15].persons[2].pasport.num);
{
      readln(f.persons[i].fam);
      readln(f.persons[i].years);
      readln(f.persons[i].pasport.line);
      readln(f.persons[i].pasport.num);
}
    end;
end.