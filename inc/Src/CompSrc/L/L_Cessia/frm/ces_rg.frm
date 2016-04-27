
#doc
Регистр - расчет финансового результата
#end
.set name = 'Ces_Registr'
.HIDE
.var
  s1_2 : double    // убыток от уступки
.endvar
.Fields
 dBeg
 dEnd
 nmNDE
 myTiDkGal : word
!.{
 nRecDog : comp
 NoDog  stat d dobr sumdolg sumopl namepl1
!.{
 nRecSpDG : comp     // nRec спецификации ДЦ
 nRecDoc  : comp     // nRec документа
 tiDkDoc  : word     // тип документа
 num1
 d1
 srokopl
 s1       : double
 s2       : double
!.}
!.}
.Endfields
dBeg    ^
dEnd    ^
nmNDE - ^
myTiDkGal - ^
.{
NRecDog ^
NoDog   ^
stat    ^
d       ^
dobr    ^
sumdolg ^
sumopl  ^
namepl1 ^
.{
nRecSpDG ^
nRecDoc  ^
tiDKDoc  ^
num1     ^
d1       ^
srokopl  ^
s1       ^
s2       ^
.begin
 s1_2:=s1-s2;
 if (s1_2 < 0) then s1_2:=0
end.
.}
.}
.endform

#doc
Налоговый регистр уступки прав требования
#end
.linkform 'Ces_Registr1' prototype is 'Ces_Registr'
.nameinlist 'Налоговый регистр уступки прав требования'
!.group 'Уступка долга (продажа)'
! доп.лог.таблица
.var
  boOkCes   : boolean
  AllDC_3   : double
  AllNR_3   : double
  AllDC_4   : double
  AllNR_4   : double
  AllDC_6   : double
  AllNR_6   : double
.endvar
#include locessia.frn
.Fields
 CommonFormHeader
 dBeg
 dEnd
.EndFields
^
 Б                               Регистр - расчет финансового результата
                        от уступки прав требования (расходы по реализации прав,
                           кроме ситуаций продажи ранее приобретенных прав)
                               за период с @@@@@@@@@@ по @@@@@@@@@@ Б
 Ш──────────────────┬──────────────────┬──────────────────┬──────────────────┬──────────────┬─────────────────┬───────────────────────┬───────────────────────┬─────────────────────────┬──────────────────────────────────
 Дата уступки     │      Объект      │       Сумма      │       Цена       │Дата погашения│Убыток от уступки│Убыток, принимаемый    │Убыток, принимаемый    │Расчет суммы процентов   │Убыток от реализации права
 права требования │                  │   задолженности  │      продажи     │задолженности │права требования │в уменьшение облагаемой│в уменьшение облагаемой│в соответствии со статьей│требования, учитываемый в составе
                  │                  │                  │                  │по договору   │                 │базы текущего периода  │базы будущих периодов  │269 НК РФ                │расходов от реализации
        (1)       │        (2)       │        (3)       │        (4)       │      (5)     │        (6)      │          (7)          │          (8)          │            (9)          │                 (10)
──────────────────┼──────────────────┼──────────────────┼──────────────────┼──────────────┼─────────────────┼───────────────────────┼───────────────────────┼─────────────────────────┼────────────────────────────────── Ш
.begin
   AllNR_3:=0.0;
   AllNR_4:=0.0;
   AllNR_6:=0.0;
end.
.{
.begin
   boOkCes  := false;
   loCessia.nRecDogCes:=nRecDog;
   if (loCessia.GetFirst fastfirstrow BaseDoc = 0) then
    {
     if (loCessia.GetFirst StepDoc = 0) then
      if (loCessia.GetFirst SpStep = 0) then
       do
        {
          case loCessia.BaseDocSp.VidDoc of
           90..93: boOkCes:=false
           else    boOkCes :=true
          end
        }
       while ((not boOkCes) and (loCessia.GetNext SpStep = 0))
    }
end.
.{?Internal;boOkCes;
.Fields
 NoDog
.EndFields
 И Договор продажи долга № @@@@@@@@@@@@@@@@ И
.begin
   AllDC_3:=0.0;
   AllDC_4:=0.0;
   AllDC_6:=0.0;
end.
.}
.{
.{?Internal;(boOkCes and ((tiDkDoc<90) or (tiDkDoc>95)));
.Fields
 dObr
 'ДО №'+num1
 s1
 s2
 srokopl
 s1_2
.EndFields
 Ш     @@@@@@@@@@    @@@@@@@@@@@@@@@@@@ &#&'&&&&&&&&&&&.&& &#&'&&&&&&&&&&&.&&   @@@@@@@@@@  &#&'&&&&&&&&&&&.&& Ш
.begin
   AllDC_3:=AllDC_3+s1;
   AllNR_3:=AllNR_3+s1;
   AllDC_4:=AllDC_4+s2;
   AllNR_4:=AllNR_4+s2;
   AllDC_6:=AllDC_6+s1_2;
   AllNR_6:=AllNR_6+s1_2;
end.
.}
.}
.{?Internal;((AllDC_3>0.0) or (AllDC_4>0.0) or (AllDC_6>0.0));
.fields
 AllDC_3
 AllDC_4
 AllDC_6
.endfields
 Ш Итого по договору                    &#&'&&&&&&&&&&&.&& &#&'&&&&&&&&&&&.&&               &#&'&&&&&&&&&&&.&& Ш
.}
 Ш───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── Ш
.begin
   AllDC_3:=0.0;
   AllDC_4:=0.0;
   AllDC_6:=0.0;
end.
.}
.{?Internal;((AllNR_3>0.0) or (AllNR_4>0.0) or (AllNR_6>0.0));
.fields
 AllNR_3
 AllNR_4
 AllNR_6
.endfields
 Ш ВСЕГО                                &#&'&&&&&&&&&&&.&& &#&'&&&&&&&&&&&.&&               &#&'&&&&&&&&&&&.&& Ш
 Ш═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════ Ш
.}
.endform

#doc
Налоговый регистр реализации прав, приобретенных ранее
#end
.linkform 'Ces_Registr2' prototype is 'Ces_Registr'
.nameinlist 'Налоговый регистр реализации прав, приобретенных ранее'
!.group 'Уступка долга (продажа)'
! доп.лог.таблица
.var
  boOkCes   : boolean
.endvar
#include locessia.frn
.Fields
 CommonFormHeader
 dBeg
 dEnd
.EndFields
^
 В                               Регистр - расчет финансового результата
                        от реализации прав, которые были приобретены ранее
                           в рамках операции по оказанию финансовых услуг
                               за период с @@@@@@@@@@ по @@@@@@@@@@ В
 И──────────────────┬───────────────────────────────────┬──────────────────┬──────────────────┬────────────────────────
 Дата реализации  │               Объект              │Сумма, уплаченная │   Цена продажи   │   Стоимость права, не
                  │                                   │ при приобретении │    (погашения)   │принимаемая в уменьшение
                  │                                   │  задолженности   │                  │     облагаемой базы
        (1)       │                (2)                │        (3)       │        (4)       │              (5)
──────────────────┼───────────────────────────────────┼──────────────────┼──────────────────┼──────────────────────── И
.{
.begin
   boOkCes  := false;
   loCessia.nRecDogCes:=nRecDog;
   if (loCessia.GetFirst fastfirstrow BaseDoc = 0) then
    {
     if (loCessia.GetFirst StepDoc = 0) then
      if (loCessia.GetFirst SpStep = 0) then
       do
        {
          case loCessia.BaseDocSp.VidDoc of
           91,93: boOkCes :=true
           else   boOkCes :=false
          end
        }
       while ((not boOkCes) and (loCessia.GetNext SpStep = 0))
    }
end.
.{?Internal;boOkCes;
.Fields
 NoDog
.EndFields
 В Договор продажи долга № @@@@@@@@@@@@@@@@ В
.}
.{
.{?Internal;(boOkCes and ((tiDkDoc=91) or (tiDkDoc=93)));
.Fields
 dObr
 'Договор покупки долга №'+num1
 s1
 s2
 s1_2
.EndFields
 И     @@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#&'&&&&&&&&&&&.&& &#&'&&&&&&&&&&&.&&    &#&'&&&&&&&&&&&.&& И
.}
.}
 И───────────────────────────────────────────────────────────────────────────────────────────────────────────────────── И
.}
.endform
