//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.1 - Бюджетирование
// Графические отчеты по деревьям
//------------------------------------------------------------------------------

//*******************************************************************
#doc
Графические отчеты по деревьям
#end
.set name 'TreeGraph'
.hide
.fields 
   sUpTitle
   sDnTitle
   SerieName
   xName
   yValue

.endfields

^ ^
.{ TreeGraph_Body2 CheckEnter
^
.{ TreeGraph_Body1 CheckEnter
^ ^
.}
.}

.endform

//*******************************************************************
.linkform 'TreeGraph00' prototype is 'TreeGraph'
.group "Настраиваемый график"
.fields 
   sUpTitle
   sDnTitle
//   SerieName
   xName
   yValue

.EndFields
GraphReport "График" 
{
  Query "Настройка отчета" 
  {
     aGraphType GraphType "~С~пособ изображения диаграммы" 
                "Pie";
     aEffects3D GraphDim  "Э~ф~фект трехмерности диаграммы" 
                "2D";
  }
  Page 
  {
    Graph as aGraphType as aEffects3D Bounds (0,0,4000,3000) 
    {
      Legend on; // { Font { Font Small 4; } }

      UpTitle "^";
      DnTitle "^";

.{ TreeGraph_Body2 CheckEnter
      Serie  // надпись справа
      { 

        Values Both;
        Data 
        {
.{ TreeGraph_Body1 CheckEnter
  "^" ,  &&&&&&&&&&&&&&& ;
.}
        }    // data
//        Values none;

      }      // serie
.}
    }        // graph
  }          // Page
}            // GraphReport
.endform

//*******************************************************************
//        Title "^";
//

//*******************************************************************
.linkform 'TreeGraph01' prototype is 'TreeGraph'
.group "Круговая диаграмма"
.fields 
   sUpTitle
   sDnTitle
//   SerieName
   xName
   yValue

.EndFields
GraphReport "График" 
{
  Page 
  {
    Graph Pie 2D Bounds (0,0,4000,3000) 
    {
      Legend on; // { Font { Font Small 4; } }

      UpTitle "^";
      DnTitle "^";

.{ TreeGraph_Body2 CheckEnter
      Serie  // надпись справа
      { 

        Values Both;
        Data 
        {
.{ TreeGraph_Body1 CheckEnter
  "^" ,  &&&&&&&&&&&&&&& ;
.}
        }    // data

      }      // serie
.}
    }        // graph
  }          // Page
}            // GraphReport
.endform

//*******************************************************************
.linkform 'TreeGraph02' prototype is 'TreeGraph'
.group "Столбиковая диаграмма"
.fields 
   sUpTitle
   sDnTitle
//   SerieName
   xName
   yValue

.EndFields
GraphReport "График" 
{
  Page 
  {
    Graph Bar 3D Bounds (0,0,4000,3000) 
    {
      Legend off; // { Font { Font Small 4; } }

      UpTitle "^";
      DnTitle "^";

.{ TreeGraph_Body2 CheckEnter
      Serie  // надпись справа
      { 

        Values ValuesOnly;
        ValuesFont { Font Little 1; }
        Data 
        {
.{ TreeGraph_Body1 CheckEnter
  "^" ,  &&&&&&&&&&&&&&& ;
.}
        }    // data

      }      // serie
.}
    }        // graph
  }          // Page
}            // GraphReport
.endform

