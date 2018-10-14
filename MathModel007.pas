Program MatchModel007;
const N=6;
var  m_first, m_second, m_negativ: array [1..N] of integer;
     j, i : integer;
begin
  j:=0;
  writeln('введите первый массив :');
  for i:=1 to N do readln(m_first[i]);
  writeln('введите второй массив :');
  for i:=1 to N do readln(m_second[i]);

  for i:=1 to N do
    begin
      if m_first[i] < 0 then
        begin
          j:=j+1;
          m_negativ[j]:=m_first[i]
        end;
      if m_second[i] < 0 then
          begin
            j:=j+1;
            m_negativ[j]:=m_second[i]
          end;
    end;
    
{
  for i:=1 to N do
    if m_first[i] < 0 then
      begin
        j:=j+1;
        m_negativ[j]:=m_first[i];
      end;
  for i:=1 to N do
    if m_second[i] < 0 then
      begin
        j:=j+1;
        m_negativ[j]:=m_second[i];
      end;
  writeln('Результат :');
 }
  for i:=1 to N do write(m_negativ[i],' ');
end.