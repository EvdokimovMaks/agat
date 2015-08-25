!╔═════════════════════════════════════════════════════════════════════╗
!║  Назначение:  Константы сопроводительных документов                 ║
!╚═════════════════════════════════════════════════════════════════════╝
#ifndef __SOPCONST_INC__
#define __SOPCONST_INC__
const
  ercInsertSklOrder = 1000;
  ercSoprHoz = 1001;
  ercInsertSpOrder = 1002;

  // Регистрация ГТД
  cwVidSopr_NalAkt : Word = 111;   // Тип сопрдока для налоговых актов
  csSymbol_NalAkt  : String = 'Н'; // Символ, с которого начинается номер налогового акта

  cmRecalcFactAVR = cmValue39; // Пересчет фактических показателей по объекту строительства и локальной смете
  cmPrintFR = 2000;
end;
#end

/* использованные в компоненте константы кодов команд:
cmValue1
cmValue2
cmValue4
cmValue5
cmValue6
cmValue9
cmValue10
cmValue11
cmValue12
cmValue13
cmValue14
cmValue15
cmValue16
cmValue17
cmValue18
cmValue19
cmValue20
cmValue21
cmValue22
cmValue23
cmValue24
cmValue25
cmValue26
cmValue27
cmValue28
cmValue29
cmValue30
cmValue31
cmValue32
cmValue33
cmValue34
cmValue35
cmValue36
cmValue37
cmValue38
cmValue39 - локальное меню АВР: Пересчет фактических показателей по объекту строительства и локальной смете
cmValue60
*/
