const
  cwpExcel : word = 0;
  cwpXMLUTF: word = 1;

  cwSectionColor = 080FFFFh;
  clHAlignDistr  = -4117;
  clHAlignGeneral= 1;

  cwMatrixRows: word = 1;
  cwPageLevel : word = 1;
  cwRowLevel  : word = 2;
  cwPageLevel2: word = 3;
end;

#define DSK_DSTART  'kzree100_dstart_' + p_reportID
#define DSK_DEND    'kzree100_dend_' + p_reportID
#define DSK_WREESTR 'kzree100_wreestr_' + p_reportID
#define DSK_KATVIDD 'kzree100_katvidd_' + p_reportID
