program MAX36;
{
�������������� ����� x � ������ s  :
 s:=IntToStr(x);
�������������� ������ s � ����� x :
 x:=StrToInt(s);

}
var
  s:string;
  polov1,polov2:integer;
begin
  polov1:=0;
  polov2:=0;
  write('������� S=');
  read(s);
  
  polov1:=polov1+StrToInt(s[1])+StrToInt(s[2])+StrToInt(s[3]);

  polov2:=polov2+StrToInt(s[4])+StrToInt(s[5])+StrToInt(s[6]);

  If polov1=polov2 then writeln('����� c���������')
                   else writeln('����� �������')
end.
