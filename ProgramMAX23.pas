program MAX23;
var S : string; //���������� ���� ������
    k,m,i : integer;
begin
     write('������� ������ S=');
     readln(S);
     m:=0;
     k:=length(S);
     for i:=1 to k do
         if s[i]=' ' then m:= m+1;
     write('���.-�� ��������=',m)
end.