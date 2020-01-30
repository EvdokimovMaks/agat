const

  // числа
  reSumNoNds  = 1 ;//сумма без налога; SchFact.Sum[1]+SchFact.Sum[4]+SchFact.Sum[23]+SchFact.Sum[7]
  reSumNds    = 2 ;//сумма налога;    SchFact.Sum[2]+SchFact.Sum[5]
  reSumma     = 3 ;//сумма с налогом.  SchfNds1+SchfNds2+SchfNds3+SchFact.Sum[7]+SchFact.Sum[10] /

  // строки
  reNum         = 1001; //номер СФ; SchFact.Num
  reDescr       = 1002;
  reDesGr       = 1003;

  // даты
  reDFact        = 2001;//дата создания СФ;  SchFact.DFact
  reDReg         = 2002;//дата регистрации СФ; SchFact.DReg

  // ссылки
  recOrg          = 3001;//ссылка на организацию; SchFact.cOrg
  recVal          = 3002;//ссылка на валюту
  recDogovor      = 3003;//ссылка на договор; SchFact.cDogovor
  recAppDogovor   = 3004;//ссылка на договор; SchFact.cDogovor
  recBaseDoc      = 3005;//ссылка на ДО;     SchFact.cBaseDoc
  recOtvPodr      = 3006;//ссылка на ЦО; SchFact.cOtvPodr -> FPCO.Nrecc
  reTipUser       = 3007;//UsersDoc.TipUsers
  reSchFactFilial = 3008;//филиал
  recCalPlan      = 3009;//ссылка на план SchFact.cCalPlan

  reNoBound                  = 4000;
     reTieToBaseDoc          = 4001;
     reTieToOrgdFact         = 4002;
     reTieToDogovordFact     = 4003;
     reTieToCalPlandFact     = 4004;

  reSchFactParam  = 5001;
        reBaseDocParam  = 5002;
        reOrgParam      = 5003;
        reDogovorParam  = 5004;
        redFactParam    = 5005;
        reCalPlanParam  = 5006;

        reNew           = 5100;
        reDelCur        = 5200;

end
