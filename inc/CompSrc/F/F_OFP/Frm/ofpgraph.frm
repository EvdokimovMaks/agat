//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Платежный календарь"
// Графические отчеты
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
#doc
Отчеты - Графические отчеты (прототип).<br>
#end
.set name 'OFPgraph'
.hide
.Fields
   PlatMeanName
   Valuta

   DateSaldo    : date
   Summa
   SummaNDE
   SaldoLimit
   SaldoLimitNDE

   DateLimit    : date
   SLimit
   SLimitNDE
.endFields

.{ OFPgraph_Body2 CheckEnter
^ ^
.{ OFPgraph_Body1 CheckEnter
^ ^ ^
^ ^
.}
.{ OFPgraph_Body3 CheckEnter
^ ^ ^
.}
.}

.endform

//------------------------------------------------------------------------------
#doc
Остатки платежных средств. Общий график.<br>
#end
.linkform 'OFPgraph01' prototype is 'OFPgraph'
.group "Остатки платежных средств. Общий график"
.Fields
   PlatMeanName
   DateSaldo
   SummaNDE

.EndFields
GraphReport "График"
{
  Query "Настройка отчета"
  {
     aGraphType GraphType "~С~пособ изображения диаграммы"
                "XY";
     aEffects3D GraphDim  "Э~ф~фект трехмерности диаграммы"
                "2D";
  }
  Page
  {
    Graph as aGraphType as aEffects3D Bounds (0,0,4000,3000)
    {
      Legend on;

      UpTitle "Платежные средства предприятия";
.{ OFPgraph_Body2 CheckEnter
      Serie  // надпись справа
      {
        Title "^";
        Data
        {
.{ OFPgraph_Body1 CheckEnter
  "^" ,  &&&&&&&&&&&&&&& ;
.}
        }    // data
        Values none;
      }      // serie
.{ OFPgraph_Body3 CheckEnter
.}

.}
    }        // graph
  }          // Page
}            // GraphReport
.endform

//------------------------------------------------------------------------------
#doc
Остатки платежных средств и их лимиты.<br>
#end
.linkform 'OFPgraph02' prototype is 'OFPgraph'
.group "Остатки платежных средств и их лимиты"
.Fields
   PlatMeanName + Valuta
   DateSaldo
   Summa
   DateLimit
   SLimit

.EndFields
GraphReport "Остатки платежных средств"
{
  Query "Настройка отчета"
  {
     aGraphType GraphType "~С~пособ изображения диаграммы"
                "XY";
     aEffects3D GraphDim  "Э~ф~фект трехмерности диаграммы"
                "2D";
  }
.{ OFPgraph_Body2 CheckEnter
  Page
  {
    Graph as aGraphType as aEffects3D Bounds (0,0,4000,3000)
    {
      Legend on;
      UpTitle "^";
      Serie  // надпись справа
      {
        Title "Остатки";
        Data
        {
.{ OFPgraph_Body1 CheckEnter
  "^" ,  &&&&&&&&&&&&&&& ;
.}
        }    // data
        Values none;
      }      // serie
      Serie  // надпись справа
      {
        Title "Лимиты";
        Data
        {
.{ OFPgraph_Body3 CheckEnter
  "^" ,  &&&&&&&&&&&&&&& ;
.}
        }    // data
        Values none;
      }      // serie
    }        // graph
  }          // Page
.}
}            // GraphReport
.endform


//------------------------------------------------------------------------------
#doc
Дефицит платежных средств. Общий график.<br>
#end
.linkform 'OFPgraph03' prototype is 'OFPgraph'
.group "Дефицит платежных средств. Общий график"
.Fields
   PlatMeanName
   DateSaldo
   SaldoLimitNDE

.EndFields
GraphReport "График"
{
  Query "Настройка отчета"
  {
     aGraphType GraphType "~С~пособ изображения диаграммы"
                "Bar";
     aEffects3D GraphDim  "Э~ф~фект трехмерности диаграммы"
                "2D";
  }
  Page
  {
    Graph as aGraphType as aEffects3D Bounds (0,0,4000,3000)
    {
      Legend on;

      UpTitle "Дефицит платежных средств";

.{ OFPgraph_Body2 CheckEnter
      Serie  // надпись справа
      {
        Title "^";
        Data
        {
.{ OFPgraph_Body1 CheckEnter
  "^" ,  &&&&&&&&&&&&&&& ;
.}
        }    // data
        Values none;
      }      // serie
.{ OFPgraph_Body3 CheckEnter
.}

.}
    }        // graph
  }          // Page
}            // GraphReport
.endform
//------------------------------------------------------------------------------
