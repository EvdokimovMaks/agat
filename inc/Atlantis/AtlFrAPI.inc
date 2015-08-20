const
  // Константы для TreeManager.
  tmtNoTree  = 0; // Не дерево или не учавствует в построении дерева.
  tmtManager = 1; // Поле, в котором будет прорисовано дерево.
  tmtLevel   = 2; // Содержит текущий уровень дерева.
  tmtHasBr   = 3; // Содержит информацию о наличии "братьев" на том же уровне.
  tmtIsLeaf  = 4; // Содержит информацию "узел или лист".
  tmtPicture = 5; // Содержит картинку листа или узла.

  // Константы для MemoType.
  mtEmpty      = 1;
  mtBMP        = 2;
  mtMarkBitmap = 3;

  // Константы типа экспорта.
  frExportBIFF   = 0;
  frExportXML    = 1;
  frExportRTF    = 2;
  frExportPDF    = 3;
  frExportODS    = 4;
  frExportODT    = 5;
  frExportHTML   = 6;
  frExportCSV    = 7;
  frExportDBF    = 8;
  frExportBMP    = 9;
  frExportJPEG   = 10;
  frExportTIFF   = 11;
  frExportGIF    = 12;
  frExportSimple = 13;
  frExportTXT    = 14;
  frExportFP3    = 255;

  // Константы типа действия над отчетом.
  frShowReport     = 6003;
  frExportReport   = 6004;
  frSendMailReport = 6005;
  frPrintReport    = 6006;
  frDesignReport   = 6007;
  frNewReport      = 6008;

  frDelimeter = ';';
