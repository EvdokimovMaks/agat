/*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
  �    � �   "� � � � �   � � � � � �",    � � �  "T O P   S O F T"     �
  �           蹍オ� "�����" (�) 1995                                   �
  �      �ム瓱� : 3.01                                                  �
  �      ��о�｀���:  ��瓷�≡��� �.�.                                   �
  �      ��Л�腑�┘:  ���矣�-���皀�痰� か� □��� �� 筮爼� �2            �
  �      �����モ琺:                                                     �
  �      �Кキキ��:                                                     �
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

        (scStaffReceptionT2Main..scStaffReceptionT2Main)
        {
#F1
          '~F7~ ����※碎',      cmStaffEmplInsert,       kbF7;
          '~F8~ �����碎',       cmDelete,                kbF8;
          '~Enter~ �Кキ�碎',   cmStaffDoCommonData,     kbEnter;
          '',                   cmStaffSeeDopInfo,       kbF9;
          '~Alt+B~ �┼赳�',     cmStaffPrSetFlt,         kbAltB;
          '~Alt+S~ ��珥�牀→� ',cmStaffSort,             kbAltS;
          '~Alt+F~ ��皰'       ,cmNal,                   kbAltF;
#Staf2Std
        }
        (scStaffReceptionT2MainPick..scStaffReceptionT2MainPick)
        {
#F1
          '~F7~ ����※碎',           cmStaffEmplInsert,       kbF7;
          '~F8~ �����碎',            cmDelete,                kbF8;
          '~Enter~ �Кキ�碎',        cmStaffDoCommonData,     kbEnter;
          '',                        cmStaffSeeDopInfo,       kbF9;
          '~Alt+B~ �┼赳�',          cmStaffPrSetFlt,         kbAltB;
          '~Alt+S~ ��珥�牀→� ',     cmStaffSort,             kbAltS;
          '~Alt+F~ ��皰'       ,     cmNal,                   kbAltF;



#Ins
#PlusMinus
#Staf2Std
        }
        (scStaffReceptionMainTree..scStaffReceptionMainTree)
        {
#F1
          '~F7~ ����※碎',      cmStaffEmplInsert,       kbF7;
          '~F8~ �����碎',       cmDelete,                kbF8;
          '~Enter~ �Кキ�碎',   cmStaffDoCommonData,     kbEnter;
          '',                   cmStaffSeeDopInfo,       kbF9;
          '~Alt+B~ �┼赳�',     cmStaffPrSetFlt,         kbAltB;
          '~Alt+S~ ��珥�牀→� ',cmStaffSort,             kbAltS;
          '~Alt+F~ ��皰'       ,cmNal,                   kbAltF;
          '~Alt+O~ �皰÷�Ε�┘',cmExp,                   kbAltO;
#Staf2Std
        }

        (scStaffReceptionT2CD..scStaffReceptionT2CD)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffReceptionT2CDPick..scStaffReceptionT2CDPick)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�', cmStaffDoWinNext,  kbCtrlEnter;
          '~F3~ �襦��',             cmPick,            kbF3;
          '~F7~ ����※碎',          cmInsert,          kbF7;
          '~F8~ �����碎',           cmDelete,          kbF8;
!          '~Alt+B~ �┼赳�',        cmStaffPrSetFlt,   kbAltB;
          '',                       cmClose,           kbEsc;
          '',                       cmStaffSeeDopInfo, kbF9;
          '',                       cmCalc,            kbCtrlQ;

#Staf2Std
        }

        (scStaffReceptionT2PsnFamState..scStaffReceptionT2PsnFamState)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F3~ �襦��',       cmPick,              kbF3;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffReceptionT2CDEdit..scStaffReceptionT2CDEdit)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�', cmStaffDoWinNext,  kbCtrlEnter;
          '~F3~ �Кキ�碎',          cmPick,            kbF3;
          '~F7~ ����※碎',          cmInsert,          kbF7;
          '~F8~ �����碎',           cmDelete,          kbF8;
          '',                       cmClose,           kbEsc;
          '',                       cmStaffSeeDopInfo, kbF9;
          '',                       cmCalc,            kbCtrlQ;

#Std_Stat
#Staf2Std
        }

        (scStaffReceptionT2CDEditNew..scStaffReceptionT2CDEditNew)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F3~ �Кキ�碎',    cmPick,         kbF3;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '~Alt+B~ �┼赳�',   cmStaffPrSetFlt,         kbAltB;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
          '',                 cmCopyToBuf,    kbCtrlC;
          '',                 cmPasteFromBuf, kbCtrlV;

#Staf2Std
        }


        (scStaffReceptionT2Com..scStaffReceptionT2Com)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F7~ ����※碎',           cmInsert,          kbF7;
          '~F8~ �����碎',            cmDelete,          kbF8;
!          '~Alt+B~ �┼赳�',         cmStaffPrSetFlt,   kbAltB;
          '',                        cmClose,           kbEsc;
          '',                        cmStaffSeeDopInfo, kbF9;
          '',                        cmCalc,            kbCtrlQ;

#Staf2Std
        }

        (scStaffReceptionT2ComNew..scStaffReceptionT2ComNew)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '~Alt+B~ �┼赳�',   cmStaffPrSetFlt,         kbAltB;
          '',                 cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;

#Staf2Std
        }


        (scStaffReceptionT2ComPick..scStaffReceptionT2ComPick)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�', cmStaffDoWinNext,  kbCtrlEnter;
          '~F3~ �襦��',             cmPick,            kbF3;
          '~F7~ ����※碎',          cmInsert,          kbF7;
          '~F8~ �����碎',           cmDelete,          kbF8;
!          '~Alt+B~ �┼赳�',        cmStaffPrSetFlt,   kbAltB;
          '',                       cmClose,           kbEsc;
          '',                       cmStaffSeeDopInfo, kbF9;
          '',                       cmCalc,            kbCtrlQ;

#Staf2Std
        }

        (scStaffReceptionT2ComPickNew..scStaffReceptionT2ComPickNew)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F3~ �襦��',       cmPick,         kbF3;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '~Alt+B~ �┼赳�',   cmStaffPrSetFlt,         kbAltB;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffReceptionT2NonStop..scStaffReceptionT2NonStop)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffReceptionT2SL..scStaffReceptionT2SL)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '~F4~ �痰�爬�',     cmStaffEdit,    kbF4;
          '',                 cmStaffSeeDopInfo,   kbF9;
          '~Alt+C~ �������皀�讚�', cmStaffPrOk,    kbAltC;
#Staf2Std
        }


        (scStaffPens..scStaffPens)
        {
#F1
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '~Esc �諷��', cmClose,        kbEsc;
#Staf2Std
        }

        (scStaffPensPick..scStaffPensPick)
        {
#F1
          '~F3~ �襦��',       cmPick,         kbF3;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '~Esc �諷��',       cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }


        (scStaffReceptionT2SLHis..scStaffReceptionT2SLHis)
        {
          '~F1~ ����蛹',      cmHelp,              kbF1;
          '~F4~ �Кキ�碎',    cmStaffEdit,         kbF4;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffSLRec..scStaffSLRec)
        {
          '~F1~ ����蛹',      cmHelp,              kbF1;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffSLRecPick..scStaffSLRecPick)
        {
          '~F1~ ����蛹',      cmHelp,              kbF1;
          '~F3~ �襦��',       cmPick,              kbF3;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffReceptionT2SLEdit..scStaffReceptionT2SLEdit)
        {
#F1
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffReceptionT2SLEditPick..scStaffReceptionT2SLEditPick)
        {
#F1
          '~F3~ �襦��',       cmPick,         kbF3;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffReceptionT2SLEditDate..scStaffReceptionT2SLEditDate)
        {
#F1
          '~F3~ �オ.����',    cmPick,         kbF3;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffReceptionT2Passp..scStaffReceptionT2Passp)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffReceptionT2PasspNat..scStaffReceptionT2PasspNat)
        {
          '~F1~ ����蛹',      cmHelp,              kbF1;
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F2~ ��爼�',       cmStaffPasspForm,    kbF2;
          '~F8~ �����碎',     cmDelete,            kbF8;
          '', cmClose,             kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffReceptionT2Butt..scStaffReceptionT2Butt)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�', cmStaffDoWinNext,  kbCtrlEnter;
          '',                       cmClose,           kbEsc;
          '',                       cmStaffSeeDopInfo, kbF9;
          '',                       cmCalc,            kbCtrlQ;

#Staf2Std
        }

        (scStaffReceptionT2ButtAltG..scStaffReceptionT2ButtAltG)
        {
#F1
          '~F7~ ����※碎',          cmInsert,          kbF7;
          '~F8~ �����碎',           cmDelete,          kbF8;
          '~Ctrl+Enter~ 甄イ竡薀�', cmStaffDoWinNext,  kbCtrlEnter;
          '',                       cmClose,           kbEsc;
          '',                       cmStaffSeeDopInfo, kbF9;
          '',                       cmCalc,            kbCtrlQ;
          '',                       cmRecalcAllSums,   kbAltG;

#Staf2Std
        }

        (scStaffT2Add..scStaffT2Add)
        {
#F1
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffT2AddPick..scStaffT2AddPick)
        {
#F1
          '~F3~ �襦��',       cmPick,         kbF3;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffRecepT2Conscr..scStaffRecepT2Conscr)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffRecepT2ConscrPick..scStaffRecepT2ConscrPick)
        {
#F1
          '~Ctrl+Enter~ 甄イ竡薀�',  cmStaffDoWinNext,  kbCtrlEnter;
          '~F3~ �襦��',       cmPick,         kbF3;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffRecepT2Hire..scStaffRecepT2Hire)
        {
#F1
          '~F2~ ��爼�',       cmStaffHireForm,kbF2;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffRecepT2HirePick..scStaffRecepT2HirePick)
        {
#F1
          '~F2~ ��爼�',       cmStaffHireForm,kbF2;
          '~F3~ �襦��',       cmPick,         kbF3;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
#Staf2Std
        }

        (scStaffRecepT2Raise..scStaffRecepT2Raise)
        {
#F1
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
          '',                 cmSortMC,       kbAltR;
#Staf2Std
        }

        (scStaffRecepT2RaisePick..scStaffRecepT2RaisePick)
        {
#F1
          '~F3~ �襦��',       cmPick,         kbF3;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
          '',                 cmSortMC,       kbAltR;
#Staf2Std
        }
/*********************** ��牆���� *************************************/
        (scStaffPass..scStaffPass)
        {
          '~F1~ ����蛹',        cmHelp,         kbF1;
          '~Alt+F3~ ���琺碎',   cmClose,        kbAltF3;
          '~Enter~ �襦��',      cmDefault,      kbF2;
          '~Alt+~ �イ��皋牀���┘', cmCalculator,   kbShiftF2;
          '',                   cmLastHelp,     kbAltF1;
          '',                   cmZoom,         kbF5;
          '',                   cmResize,       kbCtrlF5;
          '',                   cmQuit,         kbAltX;
          '',                   cmMenu,         kbF10;
          '',              cmEvaluateAndModify, kbCtrlF4;
        }

        (scStaffPick..scStaffPick)
        {
          '~F1~ ����蛹',        cmHelp,         kbF1;
          '~Alt+F3~ ���琺碎',   cmClose,        kbAltF3;
          '~Enter~ �襦��',      cmDefault,      kbF2;
          '',                   cmCalculator,   kbShiftF2;
          '',                   cmLastHelp,     kbAltF1;
          '',                   cmZoom,         kbF5;
          '',                   cmResize,       kbCtrlF5;
          '',                   cmQuit,         kbAltX;
          '',                   cmMenu,         kbF10;
          '',              cmEvaluateAndModify, kbCtrlF4;
        }

        (scStaffBut..scStaffBut)
        {
          '~F1~ ����蛹',        cmHelp,         kbF1;
          '~Alt+F3~ ���琺碎',   cmClose,        kbAltF3;
          '',                   cmDefault,      kbF2;
          '',                   cmLastHelp,     kbAltF1;
          '',                   cmCalculator,   kbShiftF2;
          '',                   cmZoom,         kbF5;
          '',                   cmResize,       kbCtrlF5;
          '',                   cmQuit,         kbAltX;
          '',                   cmMenu,         kbF10;
          '',              cmEvaluateAndModify, kbCtrlF4;
        }

        (scStaffInterfac1..scStaffInterfac1)
        {
          '~F1~ ����蛹',        cmHelp,         kbF1;
          '~F3~ �襦��',         cmPick,         kbF3;
          '~F4~ �ムュ��',       cmPass,         kbF4;
          '~F7~ ����※碎',      cmInsert,       kbF7;
          '~F8~ �����碎',       cmDelete,       kbF8;
          '~Alt+F3~ ���琺碎',   cmClose,        kbAltF3;
          ''                ,   cmDoTable1,     kbAltF2;
          '',                   cmprintbase,   kbctrlr;
          '',                   cmPrintBaseGround, kbCtrlP;
          '',                   cmCalculator,   kbShiftF2;
          '',                   cmQuit,         kbAltX;
          '',                   cmsearchsubstr, kbctrlS;
          '',                   cmMenu,         kbF10;
          '',                   cmZoom,         kbF5;
          '',                   cmResize,       kbCtrlF5;
          '',                   cmNext,         kbF6;
          '',                   cmPrev,         kbShiftF6;
          '',                   cmSysMenu,      kbCtrlF10;
          '',              cmEvaluateAndModify, kbCtrlF4;

        }

        (scStaffInterfac2..scStaffInterfac2)
        {
          '~F1~ ����蛹',        cmHelp,         kbF1;
          '~  ~      ',         cmOk,           kbF3;
          '~F4~ �ムュ��',       cmPass,         kbF4;
          '~F7~ ����※碎',      cmInsert,       kbF7;
          '~F8~ �����碎',       cmDelete,       kbF8;
          '~Alt+F3~ ���琺碎',   cmClose,        kbAltF3;
          ''                ,   cmDoTable1,     kbAltF2;
          '',                   cmprintbase,   kbctrlr;
          '',                   cmPrintBaseGround, kbCtrlP;
          '',                   cmCalculator,   kbShiftF2;
          '',                   cmQuit,         kbAltX;
          '',                   cmMenu,         kbF10;
          '',                   cmZoom,         kbF5;
          '',                   cmResize,       kbCtrlF5;
          '',                   cmNext,         kbF6;
          '',                   cmPrev,         kbShiftF6;
          '',                   cmSysMenu,      kbCtrlF10;
          '',              cmEvaluateAndModify, kbCtrlF4;

        }

        (scStaff178Esc..scStaff178Esc)
        {
          '~F1~ ����蛹',        cmHelp,         kbF1;
          '~F7~ ����※碎',      cmInsert,       kbF7;
          '~F8~ �����碎',       cmDelete,       kbF8;
          '~Alt+F3~ ���琺碎',   cmClose,        kbAltF3;
          '',                   cmCalculator,   kbShiftF2;
          '',                   cmQuit,         kbAltX;
          '',                   cmsearchsubstr, kbctrlS;
          '',                   cmMenu,         kbF10;
          '',                   cmZoom,         kbF5;
          '',                   cmResize,       kbCtrlF5;
          '',                   cmNext,         kbF6;
          '',                   cmPrev,         kbShiftF6;
          '',                   cmSysMenu,      kbCtrlF10;
          '',              cmEvaluateAndModify, kbCtrlF4;

        }

        (scStaffKlVidPos..scStaffKlVidPos)
        {
#F1
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '~Alt+F3~ ���琺碎', cmClose,        kbAltF3;
          '',                 cmOpenSearch,   kbAltS;
          '',                 cmMenu,         kbF10;
          '',                 cmZoom,         kbF5;
          '',                 cmResize,       kbCtrlF5;
          '',                 cmTile,         kbShiftF5;
          '',                 cmCascade,      kbAltF5;
          '',                 cmNext,         kbF6;
          '',                 cmPrev,         kbShiftF6;
          '',                 cmSysMenu,      kbCtrlF10;
          '',                 cmLastHelp,     kbAltF1;
          '',                 cmCallIndex,    kbShiftF1;
          '',                 cmCalendar,     kbCtrlF2;
          '',                 cmCalculator,   kbShiftF2;
          '',                 cmQuit,         kbAltX;
        }

        (scZarPsnLinksEdit..scZarPsnLinksEdit)
        {
#F1
          '~F3~ �Кキ�碎',    cmPick,       kbF3;
          '~F7~ ����※碎',    cmInsert,       kbF7;
          '~F8~ �����碎',     cmDelete,       kbF8;
          '', cmClose,        kbEsc;
          '',                 cmStaffSeeDopInfo,   kbF9;
          '',                 cmCopyToBuf,    kbCtrlC;
          '',                 cmPasteFromBuf, kbCtrlV;
#Staf2Std

        }
        (scStaffReceptionMainTreeExtend..scStaffReceptionMainTreeExtend)
        {
#F1
          '~F7~ ����※碎',      cmStaffEmplInsert,       kbF7;
          '~F8~ �����碎',       cmDelete,                kbF8;
          '~Enter~ �Кキ�碎',   cmStaffDoCommonData,     kbEnter;
          '',                   cmStaffSeeDopInfo,       kbF9;
          '~Alt+B~ �┼赳�',     cmStaffPrSetFlt,         kbAltB;
          '~Alt+S~ ��珥�牀→� ',cmStaffSort,             kbAltS;
          '~Alt+F~ ��皰'       ,cmNal,                   kbAltF;
          '~Alt+O~ �皰÷�Ε�┘',cmExp,                   kbAltO;
          '~Ctrl+F7~ 踸ガ'    ,cmInsLowLevel,           kbCtrlF7;
#Staf2Std
        }
