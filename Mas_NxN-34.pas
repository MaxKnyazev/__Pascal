Program Cars;
var BmwSpeed, BmwColor, BmwAcceleration, VolvoSpeed, VolvoColor, VolvoAcceleration, AudiSpeed, AudiColor, AudiAcceleration : string;
// acceleration - разгон

procedure WriteFeatures(speed,color,acceleration : string);
begin
  writeln(speed);
  writeln(color);
  writeln(acceleration);
end;

begin
  BmwSpeed:='120км/ч';
  BmwColor:='Тёмно-синий';
  BmwAcceleration:='100км/ч за 5 сек';
  VolvoSpeed:='110 км/ч';
  VolvoColor:='Чёрный';
  VolvoAcceleration:='100км/ч за 6 сек';
  AudiSpeed:='130км/ч';
  AudiColor:='Белый';
  AudiAcceleration:='100км/ч за 5 сек';
  WriteFeatures(AudiSpeed,AudiColor,AudiAcceleration)
end.