//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
//------------------------------------------------------------------------------
// Галактика 5.8 - Финансовый анализ
// Форма для Учета в диаграммах
//------------------------------------------------------------------------------

#doc
Финансовый анализ. Базовая форма для Учета в диаграммах.
#end
.FORM DiagramMain
.HIDE
.FIELDS
Diagram_type
Diagram_name
Diagram_UpTitle
Diagram_value  : double
Diagram_legend
.ENDFIELDS
.{ CheckEnter NewPage
  Тип диаграммы : ^
  Заголовок диаграммы : ^
.IF TypePie
.END
.{ CheckEnter NewSeria
  Серия : ^
.{ CheckEnter NewDATA
   ^, "^";
.}
.}
.}
.ENDFORM

// присоединенная форма
.linkform Graf prototype is DiagramMain
.fields
Diagram_type
Diagram_name
Diagram_UpTitle
Diagram_value
Diagram_legend
.endfields
GraphReport {
ScreenSize (4000,3000);
Query "Настройка отчета" {
    MyDim       GraphDim  "Эффект ~т~рехмерности"              "3D";
    MyBlank     OnOff     "Запретить вывод ~н~улевых значений" "On";
    MyValues    Values    "Способ вывода ~з~начений в точках"  "ValuesOnly";
    MyLegend    OnOff     "Показывать ~л~егенду диаграммы"     "On";
} // Query
.{ CheckEnter NewPage
Page {
Graph ^ as MyDim {
  UpTitle "^";
.IF TypePie
  by 1;
.END
  Legend as MyLegend;
  SetZeroAsBlank as MyBlank;
.{ CheckEnter NewSeria
  Serie
  {
    Title "^";
    Values as MyValues;
    Data
    {
.{ CheckEnter NewDATA
      ^, "^";
.}
    } // Data
  } // serie
.} // NewSeria
} // Graph
} // Page
.} // NewPage
} // GraphReport
.endform
