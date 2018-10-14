Program z008_2017;
var abonentPlat, megabaitOn, priceMegabait, spendMegabait, pay : integer;

begin
  write('Введите абонентскую плату = '); readln(abonentPlat);
  write('Включено магабайт = '); readln(megabaitOn);
  write('Потрачено мегабайт = '); readln(spendMegabait);
  write('Введите цену одного мегабайта = '); readln(priceMegabait);
  pay:=abonentPlat;
  if spendMegabait > megabaitOn then
    pay:=pay+((spendMegabait-megabaitOn)*priceMegabait);
  writeln('Израсходовано ',pay,' рублей');
end.