Program Cars;
var BmwSpeed, BmwColor, BmwAcceleration, VolvoSpeed, VolvoColor, VolvoAcceleration, AudiSpeed, AudiColor, AudiAcceleration : string;
// acceleration - ������

procedure WriteFeatures(speed,color,acceleration : string);
begin
  writeln(speed);
  writeln(color);
  writeln(acceleration);
end;

begin
  BmwSpeed:='120��/�';
  BmwColor:='Ҹ���-�����';
  BmwAcceleration:='100��/� �� 5 ���';
  VolvoSpeed:='110 ��/�';
  VolvoColor:='׸����';
  VolvoAcceleration:='100��/� �� 6 ���';
  AudiSpeed:='130��/�';
  AudiColor:='�����';
  AudiAcceleration:='100��/� �� 5 ���';
  WriteFeatures(AudiSpeed,AudiColor,AudiAcceleration)
end.