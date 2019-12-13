//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.50 - ������ ����䥩� �롮�
// ��⠫�� ���ᥫ��, 䨭. �������� � �।�⮢ (����)
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// ���ᥫ�
Browse brVekslMark ('',hcVekslHotKeys,sci1478EnIns);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName '�����'        ('����� ���㬥��')           : [ 3], Protect, NoAutoSize, Centered;
  Veksl.DatVip   '���⠢���'     ('��� ��⠢����� ���ᥫ�')   : [10], Protect, NoAutoSize, Centered;
  Veksl.SrDoc    '����'         ('���� ���㬥��')            : [ 8], Protect;
  Veksl.NoDoc    '� ����.'      ('����� ���㬥��')            : [ 8], Protect;
  Veksl.NoBlnk   '�����'         ('����� ������ ���㬥��')     : [ 8], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 '�㬬�'         ('�㬬� �� ���ᥫ�')           : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  '���'           ('����� ���㬥��')           : [ 3], Protect, NoAutoSize, Centered;
  KatOrg.Name    '���ᥫ���⥫�' ('������������ ���ᥫ���⥫�') : [25], Protect;
  isPicked       'V'                                            : [ 1], Skip, NoAutoSize, Centered;
#AddFieldArchiveToBrowse(GetDocTiDkGal(TipDk), Veksl.nRec, m_sCurrentBarKod)
end;  // Browse

//------------------------------------------------------------------------------
// ����� �㬠��
Browse brFinMark ('',hcVekslHotKeys,sci1478EnIns);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName '�����'        ('����� ���㬥��')               : [ 3], Protect, NoAutoSize, Centered;
  Veksl.DatVip   '���⠢���'     ('��� ��⠢����� ���㬥��')     : [10], Protect, NoAutoSize, Centered;
  Veksl.SrDoc    '����'         ('���� ���㬥��')                : [ 8], Protect;
  Veksl.NoDoc    '� ����.'      ('����� ���㬥��')                : [ 8], Protect;
  Veksl.NoBlnk   '�����'         ('����� ������ ���㬥��')         : [ 8], Protect;
  Veksl.Kol      '������⢮'    ('������⢮ ���㬥�⮢ � �����') : [20.0, '\0p[|-]3666`666`666`666`666'], Protect, NoAutoSize;
  if (Veksl.cVal = 0, Veksl.Sum * Veksl.Kol, Veksl.SumV * Veksl.Kol)
                 '�㬬�'         ('�㬬� �� ������ ���㬥�⮢')     : [22.2, '\2p[|-]3666`666`666`666`666.88'], Protect, NoAutoSize;
  KlVal.SimvolV  '���'           ('����� ���㬥��')               : [ 3], Protect, NoAutoSize, Centered;
  KatOrg.Name    '���⥭�'       ('������������ �⥭�')          : [18], Protect;
  isPicked       'V'                                                : [ 1], Skip, NoAutoSize, Centered;
  #AddFieldArchiveToBrowseDop
end;  // Browse

//------------------------------------------------------------------------------
// �뤠��� �।���
Browse brKredVdMark ('', hcVekslHotKeys, sci1478EnIns);
  Show at (,,, 25);
Fields {Font = {Color = RecColor}};
  Veksl.NoDoc    '� ����.'  ('����� ���㬥��')           : [10],  Protect, Centered;
  Veksl.DatVip   '���⠢���' ('��� ��⠢����� �������') : [10],  Protect, NoAutoSize, Centered;
  VekslSum       '�㬬�'     ('�㬬� �।��')             : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslOplSum    '����襭�'  ('����襭��� �㬬� �।��')  : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslNoOplSum  '���⮪'   ('������襭��� �㬬� �।��'): [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  '���'       ('�����  �।��')           : [3],   Protect, NoAutoSize, Centered;
  Veksl.PrGod    '%'         ('��業� �������')           : [9.5], Protect;
  Veksl.DatOb    '����襭'   ('��� ��襭�� �।��')      : [10],  Protect, NoAutoSize, Centered;
  KatOrgPl.Name  '����騪'   ('������������ ����騪�')     : [25],  Protect;
  KatNotes.sName '�����'    ('����� ���㬥��')          : [6],   Protect, NoAutoSize, Centered;
  isPicked       'V'                                       : [1],   Skip, NoAutoSize, Centered;
end;  // Browse

Tree trKredVdMark ('', hcVekslHotKeys, sci1478EnEscTreeI);
  Show At (,,, 25);
Fields {Font = {Color = RecColor}};
  Veksl.NoDoc    '� ����.'  ('����� ���㬥��')           : [10],  Protect, Centered;
  Veksl.DatVip   '���⠢���' ('��� ��⠢����� �������') : [10],  Protect, NoAutoSize, Centered;
  VekslSum       '�㬬�'     ('�㬬� �।��')             : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslOplSum    '����襭�'  ('����襭��� �㬬� �।��')  : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslNoOplSum  '���⮪'   ('������襭��� �㬬� �।��'): [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  '���'       ('�����  �।��')           : [3],   Protect, NoAutoSize, Centered;
  Veksl.PrGod    '%'         ('��業� �������')           : [9.5], Protect;
  Veksl.DatOb    '����襭'   ('��� ��襭�� �।��')      : [10],  Protect, NoAutoSize, Centered;
  KatOrgPl.Name  '����騪'   ('������������ ����騪�')     : [25],  Protect;
  KatNotes.sName '�����'    ('����� ���㬥��')          : [6],   Protect, NoAutoSize, Centered;
  isPicked       'V'                                       : [1],   Skip, NoAutoSize, Centered;
end;  // Tree

//------------------------------------------------------------------------------
// ����祭�� �।���
Browse brKredPlMark ('', hcVekslHotKeys, sci1478EnIns);
  Show at (,,, 25);
Fields {Font = {Color = RecColor}};
  Veksl.NoDoc    '� ����.'  ('����� ���㬥��')           : [10],  Protect, Centered;
  Veksl.DatVip   '���⠢���' ('��� ��⠢����� �������') : [10],  Protect, NoAutoSize, Centered;
  VekslSum       '�㬬�'     ('�㬬� �।��')             : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslOplSum    '����襭�'  ('����襭��� �㬬� �।��')  : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslNoOplSum  '���⮪'   ('������襭��� �㬬� �।��'): [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  '���'       ('�����  �।��')           : [3],   Protect, NoAutoSize, Centered;
  Veksl.PrGod    '%'         ('��業� �������')           : [9.5], Protect;
  Veksl.DatOb    '����襭'   ('��� ��襭�� �।��')      : [10],  Protect, NoAutoSize, Centered;
  KatOrg.Name    '�।���'  ('������������ �।���')    : [25],  Protect;
  KatNotes.sName '�����'    ('����� ���㬥��')          : [6],   Protect, NoAutoSize, Centered;
  isPicked       'V'                                       : [1],   Skip, NoAutoSize, Centered;
end;  // Browse

Tree trKredPlMark ('', hcVekslHotKeys, sci1478EnEscTreeI);
  Show at (,,, 25);
Fields {Font = {Color = RecColor}};
  Veksl.NoDoc    '� ����.'  ('����� ���㬥��')           : [10],  Protect, Centered;
  Veksl.DatVip   '���⠢���' ('��� ��⠢����� �������') : [10],  Protect, NoAutoSize, Centered;
  VekslSum       '�㬬�'     ('�㬬� �।��')             : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslOplSum    '����襭�'  ('����襭��� �㬬� �।��')  : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslNoOplSum  '���⮪'   ('������襭��� �㬬� �।��'): [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  '���'       ('�����  �।��')           : [3],   Protect, NoAutoSize, Centered;
  Veksl.PrGod    '%'         ('��業� �������')           : [9.5], Protect;
  Veksl.DatOb    '����襭'   ('��� ��襭�� �।��')      : [10],  Protect, NoAutoSize, Centered;
  KatOrg.Name    '�।���'  ('������������ �।���')    : [25],  Protect;
  KatNotes.sName '�����'    ('����� ���㬥��')          : [6],   Protect, NoAutoSize, Centered;
  isPicked       'V'                                       : [1],   Skip, NoAutoSize, Centered;
end;  // Tree

//------------------------------------------------------------------------------
// ���筨�� �।�⮢����
Browse brKredSrcMark ('', hcVeksIstKreditov, sci1478EnIns);
  Show at (,,, 25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName '�����'       ('����� ���㬥��')              : [6],   Protect, Centered;
  Veksl.DatVip   '�����'       ('��� ������ ���筨��')       : [10],  Protect, NoAutoSize, Centered;
  Veksl.NoDoc    '�����'        ('����� ���筨�� �।�⮢����')  : [10],  Protect, NoAutoSize;
  Veksl.MestVip  '������������' ('������������ ���筨�� �।�⮢����') : [30], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 '�㬬�'        ('�㬬� ���筨�� �।�⮢����')  : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect, NoAutoSize;
  if (Veksl.cVal = 0, Veksl.SumPl, Veksl.SumPlV)
                 '�ᯮ������' ('�㬬� �����祭��� �।��')     : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect, NoAutoSize;
  if (Veksl.cVal = 0, Veksl.Sum - Veksl.SumPl, Veksl.SumV - Veksl.SumPlV)
                 '��������'     ('�㬬� ᢮������ �।��')       : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect, NoAutoSize;
  KlVal.SimvolV  '���'          ('����� ���筨�� �।�⮢����') : [3],   Protect, NoAutoSize, Centered;
  Veksl.PrGod    '%'            ('��業� �������')               : [9.5], Protect, NoAutoSize;
  Veksl.DatOb    '������'       ('��� ������� ���筨��')       : [10],  Protect, NoAutoSize, Centered;
  isPicked       'V'                                              : [1],   Skip, NoAutoSize, Centered;
end;  // Browse

//------------------------------------------------------------------------------
// ����� ����ࠣ���
Browse brDolgVd ('', hcDogov_MRestruct, sci1478EnEsc);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName '�����'        ('����� ���㬥��')            : [6],  Protect, Centered;
  sMode          '���.' ('����� �ନ஢���� ᮣ��襭��: "��" - �� ��, "��" - �� ��⠬-䠪��ࠬ, "����." - �� ��������') :
                 [4] ,Protect, NoAutoSize, Centered;
  Veksl.DatVip   '���⠢���'     ('��� ��⠢����� ᮣ��襭��') : [10], Protect, NoAutoSize, Centered;
  Veksl.NoDoc    '� ����.'      ('����� ���㬥��')             : [10], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 '�㬬�'         ('�㬬� ������������')         : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  '���'           ('����� ᮣ��襭��')           : [3],  Protect, NoAutoSize, Centered;
  [DogDolgNoDoc] if (isValid(#DogovorDolg), oDogFuns.DogNoDoc(DogovorDolg.Buffer), '')
                 '�����', '�������' ('����� �������')        : [10], Protect;
  [DogDolgDDoc]  if (isValid(#DogovorDolg), oDogFuns.DogDDoc(DogovorDolg.Buffer), Date(0,0,0))
                 '���', '�������'  ('��� �������')         : [10], Protect, NoAutoSize, Centered;
  KatOrgPl.Name  '����ࠣ���'    ('������������ ����ࠣ���')    : [20], Protect;
end;  // Browse

// ����� ����ࠣ���
Browse brDolgVdMark ('', hcDogov_MRestruct, sci1478EnIns);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName '�����'        ('����� ���㬥��')            : [6],  Protect, Centered;
  sMode          '���.' ('����� �ନ஢���� ᮣ��襭��: "��" - �� ��, "��" - �� ��⠬-䠪��ࠬ, "����." - �� ��������') :
                  [4] ,Protect, NoAutoSize, Centered;
  Veksl.DatVip   '���⠢���'     ('��� ��⠢����� ᮣ��襭��') : [10], Protect, NoAutoSize, Centered;
  Veksl.NoDoc    '� ����.'      ('����� ���㬥��')             : [10], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 '�㬬�'         ('�㬬� ������������')         : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  '���'           ('����� ᮣ��襭��')           : [3],  Protect, NoAutoSize, Centered;
  DogDolgNoDoc   '�����', '�������' ('����� �������')        : [10], Protect;
  DogDolgDDoc    '���', '�������'  ('��� �������')         : [10], Protect, NoAutoSize, Centered;
  KatOrgPl.Name  '����ࠣ���'    ('������������ ����ࠣ���')    : [20], Protect;
  isPicked       'V'                                             : [1],  Skip, NoAutoSize, Centered;
end;  // Browse

// ����⢥��� �����
Browse brDolgPl ('', hcDogov_MRestruct, sci1478EnEsc);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName '�����'        ('����� ���㬥��')            : [6],  Protect, Centered;
  Veksl.DatVip   '���⠢���'     ('��� ��⠢����� ᮣ��襭��') : [10], Protect, NoAutoSize, Centered;
  Veksl.NoDoc    '� ����.'      ('����� ���㬥��')             : [10], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 '�㬬�'         ('�㬬� ������������')         : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  '���'           ('����� ᮣ��襭��')           : [3],  Protect, NoAutoSize, Centered;
  DogDolgNoDoc   '�����', '�������' ('����� �������')        : [10], Protect;
  DogDolgDDoc    '���', '�������'  ('��� �������')         : [10], Protect, NoAutoSize, Centered;
  KatOrg.Name    '����ࠣ���'    ('������������ ����ࠣ���')    : [20], Protect;
end;  // Browse

// ����⢥��� �����
Browse brDolgPlMark ('', hcDogov_MRestruct, sci1478EnIns);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName '�����'        ('����� ���㬥��')            : [6],  Protect, Centered;
  Veksl.DatVip   '���⠢���'     ('��� ��⠢����� ᮣ��襭��') : [10], Protect, NoAutoSize, Centered;
  Veksl.NoDoc    '� ����.'      ('����� ���㬥��')             : [10], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 '�㬬�'         ('�㬬� ������������')         : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  '���'           ('����� ᮣ��襭��')           : [3],  Protect, NoAutoSize, Centered;
  DogDolgNoDoc   '�����', '�������' ('����� �������')        : [10], Protect;
  DogDolgDDoc    '���', '�������'  ('��� �������')         : [10], Protect, NoAutoSize, Centered;
  KatOrg.Name    '����ࠣ���'    ('������������ ����ࠣ���')    : [20], Protect;
  isPicked       'V'                                             : [1],  Skip, NoAutoSize, Centered;
end;  // Browse

//------------------------------------------------------------------------------

Screen scVeksl ('',hcVekslHotKeys,sci1478EnEsc);
  Show at (,26,,) FIXED_Y;
Fields
  KatOrgPl.Name    ('���⥫�騪 �� ���ᥫ�')       : Skip;
  KatOrgPolh.Name  ('���� ���ᥫ���ঠ⥫�')     : Skip;
  sVidVeksIer      ('��� ���㬥��')               : Skip;
  Veksl.DatOpl     ('�ப ���⥦� �� ���ᥫ�')     : Skip;
  if (Veksl.DatOb = ZeroDate, '', '����. ����襭� ' + String(Veksl.DatOb)) : Skip;
  KatUslPog.Name   ('�᫮��� ����襭�� ���㬥��') : Skip;
<<
 ���⥫�騪       .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ���� ��ঠ⥫� .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ��� ���㬥��    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 �ப ����襭��   .@@@@@@@@@ .@@@@@@@@@@@@@@@@@@@@@@@@
 �᫮��� ����襭��.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
>>
end; // Screen

Screen scFin ('',hcVekslHotKeys,sci1478EnEsc);
  Show at (,26,,) FIXED_Y;
Fields
  sVidVeksIer      ('��� ���㬥��')               : Skip;
  Veksl.DatOpl     ('�ப ���⥦� �� ���㬥���')   : Skip;
  if (Veksl.DatOb = ZeroDate, '', '����. ����襭� ' + String(Veksl.DatOb)) : Skip;
  KatUslPog.Name   ('�᫮��� ����襭�� ���㬥��') : Skip;
<<

 ��� ���㬥��    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 �ப ����襭��   .@@@@@@@@@ .@@@@@@@@@@@@@@@@@@@@@@@@
 �᫮��� ����襭��.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

>>
end; // Screen

Screen scKrSrc (, hcNoContext, sci1Esc);
  Show at (, 26,,) FIXED_Y;
Fields
  sVidVeksIer      ('��� ���㬥��')                        : Skip;
  KatNotes.Name    ('����� ���㬥��')                     : Skip;
  Veksl.DatOpl     ('�ப ������� ���筨�� �।�⮢����') : Skip;
  if (Veksl.DatOb = ZeroDate, '', '����. ������ ' + String(Veksl.DatOb)) : Skip;
<<

 ��� ���㬥��    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ����� ���㬥�� .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 �ப �������    .@@@@@@@@@ .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
>>
end; // Screen

Screen scDolg ('',hcDogov_MRestruct,sci1478EnEsc);
  Show at (,26,,) FIXED_Y;
Fields
  GrafKredVid.dDat ('��� ���� ������������')       : Skip;
  Veksl.DatOpl     ('��砫쭠� ��� ��ਮ�� ����襭��') : Skip;
  Veksl.DatOb      ('����筠� ��� ��ਮ�� ����襭��')  : Skip;
  KatNotes.Name    ('����� ���㬥��')                 : Skip;
  sVidVeksIer      ('��� ���㬥��')                    : Skip;
<<

 ��� �����       .@@@@@@@@@ ��ਮ� ����襭�� � .@@@@@@@@@ �� .@@@@@@@@@
 ����� ���㬥�� .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ��� ���㬥��    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

>>
end; // Screen

Screen scVekslMark ('', hcVekslHotKeys, sci1Esc);
  Show at (,26,,) FIXED_Y;
Fields
  Sum_Podbor            ('�㬬� ��� ������ ���㬥�⮢')                         :
                        [16.2, '\2p[|-]3666`666`666`666`666.88'], NoProtect;
  NameValPodbor         ('������������ ������ ��� ������ ���㬥�⮢',,sci13Esc) :
                        Protect, PickButton;
  Sum_Vb                ('�㬬� �� ��࠭�� ���㬥�⠬')                        :
                        [16.2, '\2p[|-]3666`666`666`666`666.88'], Skip;
  (Sum_Podbor - Sum_Vb) ('�㬬� ���⪠ ��� ����� ���㬥�⮢')                  :
                        [16.2, '\2p[|-]3666`666`666`666`666.88'], Skip;
<<

    ������  .@@@@@@@@@@@@@@@ � .@@@@@@@@@@@@@@@@@@@
    ��࠭� .@@@@@@@@@@@@@@@
    ���⮪ .@@@@@@@@@@@@@@@

>>
end; // Screen
