/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2003 ��牆���罔� ���������                    �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : �甅�↓襯 痼イ痰��                                         �
 � �ム瓱�        : 7.11                                                      �
 � ��Л�腑�┘    : �ョ�碎 �珮���〓� 筮爼� ��-6� ��                           �
 � �����モ琺     :                                                           �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
! ��━��┘ !!!
! � ��皰� �襤�わ矚� ≡� 痰�━�痰� �� イ┃�聶.
! � 礒� � �爬甌イ┃餃��� 筮爼�, メ�� � ��珥�腦� �襤�え矚� �� � ����腑痰〓� <> 1, 皰:
!  - メ�� ��珥�腦� �襤�え矚� �き�� 痰牀���, 皰 痰�━�痰� 祠����鈞瘴 �� ����腑痰〓;
!  - � �牀皋↓�� 甄竍��, ≡� 痰�━�痰� �襤�わ矚� �� イ┃�聶, �� �襤�わ矚� �ギ≦�え��� ����腑痰〓 ���!

#doc
 ��М��� 筮爼� 筮爼�牀����� �砒モ�� �� ┃▲���爿�� ��珥�腦� �珮���〓�� 竍モ� ��ゃ�� �� (���).<br>
#end
.form 'FormOS6a' // FormGroupOS6a
!.group '��-6� <<��瘁��>>'
!.group '��-6� <<�カ�珮瘡>>'
!.group '��-6� <<����>>'
!.group '�遒Ε皚�� �爍��├�罔�'
.group '��-6�'
.hide
.fields

  // ***** ｡��� ┃筮爼�罔� *****
  �モ��_�腑��
  wListSumAmortFrom    : word    // ���珥├�罔� ├ �璢│� ┼� ├ ��ム�罔�

  ��━キ����┘_�爍��├�罔� // �爍��├�罔�
  ����
  ��━キ����┘_�В�皰※皀��

  �ｧ���_nRec                                           : comp
  �ｧ���
  �ｧ���_���Ν�痰�
  �ｧ���_��．�讚覃_���ム                                : LongInt

  ��━キ����┘_�謌メ皰濶ィ�_甄�Ν���

  ���ム_ぎ�祠キ��
  ����_甌痰�←キ��                                      : date // ���� ��痰祚�キ�� �ム〓� ��珥�腦� ┼� �謌メ皰濶ォ 甄�Ν�� (�爬 �ョ�皋 �牀痰諷 �� 皀�竕ォ 甄�Ν��)...
  ����_�襦謔��                                          : date
  ����_��爼�牀�����                                     : date // �砒モ�覃 �ム┏� �� ��皰琺� �ョ���鈞瘴 ��珥�腦� 

  �┐_｡�珮ぎ�����
  ���_｡�珮ぎ�����

    // ��� 筮爼� ��-6�
  ������_�ム┏��                                        : date // dPeriodBegin  か� ��ム�罔�
  ���ユ_�ム┏��                                         : date // dPeriodEnd    か� ��ム�罔�

  ｡薑�_�腑�
  ｡薑�_�磧�腑�

! ｡薑�_���_�����皋腑瓷���_竍モ�
  ｡薑�_���_����
  ｡薑�_�牀�_���ェ����_�甎��讌������                    : double
  ｡薑�_���ム_���珥├�罔�����_�珮���
  ｡薑�_��籥_��爼�皋↓���_痼���_甄礒°

  ｡薀�_�矗礫矣爿��_��む�Гカキ┘_nRec                  : comp
  ｡薀�_�矗礫矣爿��_��む�Гカキ┘
  ｡薀�_�矗礫矣爿��_��む�Гカキ┘_���

  ｡薀�_��皀爬��讚�_�癶モ痰▲����_��罧_nRec             : comp
  ｡薀�_��皀爬��讚�_�癶モ痰▲����_��罧
  ｡薑�_��．�讚覃_���ム

  // ***** �����モ琺 �ョ�皋 *****
  wTipPrint                                             : word    // �┓ �ョ�碎
  DuplicateRecordInGroupIK                              : boolean // �磧��牀��碎 ����瘡 � �珮���〓� ��珥�腦�
  AddNumIKToInvNum                                      : boolean // ����←閧� ��瑙お��覃 ���ム �� � ┃▲���爿��� ���ム�
  bWriteAmortInYear                                     : boolean // ��� �襤��� ���珥├�罔� � �メ閹�� ┼� �����, か� ℃うモ�諷 �爍��├�罔�

  // ***** �┴� �� ��珥�腦�� *****
  KatOs_nRec                                            : comp

  ����腑痰〓                                            : double

  �砒モ�覃_�ム┏�_��珥�腦�                              : date

  �腑�
  �磧�腑�
! ���_�����皋腑瓷���_竍モ�
  ���ム_���珥├�罔�����_�珮���
  ��籥_��爼�皋↓���_痼���_甄礒°

  �矗礫矣爿��_��む�Гカキ┘_nRec                        : comp
  �矗礫矣爿��_��む�Гカキ┘
  ���_痰珮�矣爿���_��む�Гカキ��_皀�竕ォ_��

  ��皀爬��讚�_�癶モ痰▲����_��罧_nRec                   : comp
  ��皀爬��讚�_�癶モ痰▲����_��罧
  ��．�讚覃_���ム

  // ***** ����襯 �� ��゛�罐 *****

  ��━キ����┘                                                    // 02  ��━キ����┘ �♀オ�� �甅�↓諷 痼イ痰�
  ��▲���爿覃_���ム                                               // 03  ��▲���爿覃 ���ム
  ��〓め���_���ム

  KatOsGrOsKodGr                                        : string 
  KatOsGrOsNameGr                                       : string
  ���_����                                                        // 04  ��� �� ����
  ����_�覩竅��                                          : date    // 05  ���� �覩竅�� ��痰牀���

                                                                  // ��痰祚┼ � �爍��├�罔�
                                                                  // 06  ぎ�祠キ�, ����, ���ム
  ��痰祚�キ��_����                                      : date
  ��痰祚�キ��_���ム

  ��痰祚�キ��_�矣�矣爿��_��む�Гカキ┘
  ��痰祚�キ��_�癶モ痰▲����_��罧

  ����_�爬�閧��_�_＜�_竍モ�                             : date    // 07  ���� �爬�閧�� � ＜紕��皀珀���� 竍モ�

  �ム〓�����讚��_痰�━�痰�                              : double  // 08  �ム〓�����讚�� 痰�━�痰� �� ��矣 �爬�閧�� � ＜紕��皀珀���� 竍モ�
  �皰━�痰�_��_��_イ┃�聶                               : double  // �皰━�痰� �� イ┃�聶
  �祠��_��腮甄キ���_���珥├�罔�                         : double  // 10  �祠�� ��腮甄キ��� ���珥├�罔� ├����
  �痰�皰膈��_痰�━�痰�                                  : double  // 11  �痰�皰膈�� 痰�━�痰�

  �牀�_���ェ����_�甎��讌������                          : double  // 09  �牀� ���ェ���� �甎��� М�����
  �牀�_蹣甎�����罔�_ぎ_��痰祚�キ��_��                   : double
  �オ竕┤_痼��_蹣甎�����罔�_��                          : double
  ���皋腑瓷┤_痼��_蹣甎�����罔�_��                      : double

  �祠��_���珥├�罔�                      : double    // �� イ┃�聶
  �祠��_���珥├�罔�_｡螢�皰�             : double    // ≡ュ �♀オ皰�
  �祠��_���珥├�罔�_��痰祚               : double    // �� イ┃�聶 �爬 ��痰祚�キ┬
  �祠��_���珥├�罔�_｡螢�皰�_��痰祚      : double    // ≡ュ �♀オ皰� �爬 ��痰祚�キ┬
  ����_������_���珥├�罔�                : date      // ���� ������  ��瘍モ� ���珥├�罔�
  ����_���ユ_���珥├�罔�                 : date      // ���� ���ユ  ��瘍モ� ���珥├�罔�

  ����_��甄イ�ォ_��腮甄キ���_���珥├�罔� : date
  ����爬皙_��腮甄キ��_���珥├�罔�


    // �襦覊 (�ムイ��)
    // 15  ぎ�祠キ�, ����, ���ム
  �襦覊�                                                : boolean
  �襦謔��_����                                          : date
  �襦謔��_���ム
  踸腮��_�襦謔��                                                 // 16  �爬腮�� �襦謔��

  ����_���������_��腮甄キ��                             : date          // ���珥├�罔�

  // ***** �┴� �� �ムギ罐��� *****
                                                                  // �ムギ罐���
  �ムギ罐���_����                                       : date    // 12
  �┓_��ム�罔�                                          : word
  �ムギ罐���_��辟筥罔キ�_�ムメ腑��_�ムギ罐���           : double  // 13
  �ムギ罐���_〓瘁����※皀�讚��_痰�━�痰�                : double  // 14

  // ***** �┴� �� ���珥├�罔� *****

  ���珥├�罔�_ArcIznosNRec                              : comp
  ���珥├�罔�_VidNormaNRec                              : comp

  ���珥├�罔�_����                                      : date
  ���珥├�罔�_��爼�                                     : double
  ���珥├�罔�_���                                       : double  // �牀� ���ェ���� �甎��讌������, �襤�え矚� � 皰� ※ぅ � ����� 縲���矚� � ��Д... ��皀� �礒�� �爬�キ閧� ��痰牀��� wGetTune('OS.SrokIspEdIzm')
  ���珥├�罔�_�祠��                                     : double
  ���珥├�罔�_������キ�                                 : double
  ���珥├�罔�_SpMoveOSNRec               : comp
  ���珥├�罔�_皋�_��ム�罔�               : word

  // ***** �┴� �� �痰��讚覓 ��ム�罔鍖 *****
  // !!! ｯム�罔� � ����覃 罔�� ＜ゃ� ぎ��←閧赱� �� �ム� �ギ≦�え��痰�...
  // !!! ��Й���碎 �� ��Ν� ＜ぅ� �� 皋�� SpMoveOs.SysOper � ���� ｯム�罔�_�┓...
  ｯム�罔�_�┓                                          : word // 蹣※���キ皚� - SpMoveOs.SysOper
  ｯム�罔�_����                                         : date
  ｯム�罔�_���ム
  ｯム�罔�_�甅����┘
! ｯム�罔�_�祠��                                        : double
  ｯム�罔�_��む
  ｯム�罔�_���
  �皰━�痰�_��_�♂ゥ_����腑痰〓                         : double
.endfields
.var
  iExcelFormat : ExcelFormat;
.endvar
! --------------------------------------------------------------------------
.{ // ������ 筮爼�
 { ***** ������ 筮爼� *****
   ***** ｡��� ┃筮爼�罔� *****
   �モ��_�腑��                                                    - ^
   wListSumAmortFrom                                              - ^         // ���珥├�罔� ├ �璢│� ┼� ├ ��ム�罔�

   ��━キ����┘_�爍��├�罔� - �爍��├�罔�                         - ^
   ����                                                           - ^
   ��━キ����┘_�В�皰※皀��                                      - ^

   �ｧ���_nRec                                                    - ^
   �ｧ���                                                         - ^
   �ｧ���_���Ν�痰�                                               - ^
   �ｧ���_��．�讚覃_���ム                                         - ^

   ��━キ����┘_�謌メ皰濶ィ�_甄�Ν���                             - ^

   ���ム_ぎ�祠キ��                                                - ^
   ����_甌痰�←キ��                                               - ^
   ����_�襦謔��                                                   - ^
   ����_��爼�牀�����                                              - ^

   �┐_｡�珮ぎ�����                                               - ^
   ���_｡�珮ぎ�����                                               - ^

   // ��� 筮爼� ��-6�
   ������_�ム┏��                                                 - ^
   ���ユ_�ム┏��                                                  - ^

   ｡薑�_�腑�                                                     - ^
   ｡薑�_�磧�腑�                                                  - ^
!  ｡薑�_���_�����皋腑瓷���_竍モ�                                 - ^
   ｡薑�_���_����                                                 - ^
   ｡薑�_�牀�_���ェ����_�甎��讌������                             - ^
   ｡薑�_���ム_���珥├�罔�����_�珮���                             - ^
   ｡薑�_��籥_��爼�皋↓���_痼���_甄礒°                           - ^

   ｡薀�_�矗礫矣爿��_��む�Гカキ┘_nRec                           - ^
   ｡薀�_�矗礫矣爿��_��む�Гカキ┘                                - ^
   ｡薀�_�矗礫矣爿��_��む�Гカキ┘_���                            - ^

   ｡薀�_��皀爬��讚�_�癶モ痰▲����_��罧_nRec                      - ^
   ｡薀�_��皀爬��讚�_�癶モ痰▲����_��罧                           - ^
   ｡薑�_��．�讚覃_���ム                                          - ^


   ***** �����モ琺 �ョ�皋 *****
   �┓ �ョ�碎:
     0 - ���ョキ�諷 �牀痰諷 ┃▲���爿諷 ��珥�腑�
     1 - �牀痰諷 ┃▲���爿諷 ��珥�腑� �� 皀�竕ォ 甄�Ν��
     2 - ���ョキ�諷 甄�Ν諷 ┃▲���爿諷 ��珥�腑�
   wTipPrint                                                      - ^

   �磧��牀��碎 ����瘡 � �珮���〓� ��珥�腦�
   DuplicateRecordInGroupIK                                       - ^

   ����←閧� ��瑙お��覃 ���ム �� � ┃▲���爿��� ���ム�
   AddNumIKToInvNum                                               - ^

   �襤�え碎 ���珥├�罔� �� ��� (true), ┼� �� �メ閹 (false)
   bWriteAmortInYear                                              - ^

   ***** �┴� �� ��珥�腦�� *****
   { ***** ������ ***** �┴� �� ��珥�腦�� *****
.{ CheckEnter CycleByIK
     { ------------------- *** �┴� �� ��珥�腦�� ***
       KatOs_nRec                                                 - ^

       ����腑痰〓                                                 - ^

       �砒モ�覃_�ム┏�_��珥�腦�                                   - ^

       �腑�                                                       - ^
       �磧�腑�                                                    - ^
!      ���_�����皋腑瓷���_竍モ�                                   - ^
       ���ム_���珥├�罔�����_�珮���                               - ^
       ��籥_��爼�皋↓���_痼���_甄礒°                             - ^

       �矗礫矣爿��_��む�Гカキ┘_nRec                             - ^
       �矗礫矣爿��_��む�Гカキ┘                                  - ^
       ���_痰珮�矣爿���_��む�Гカキ��_皀�竕ォ_��                  - ^

       ��皀爬��讚�_�癶モ痰▲����_��罧_nRec                        - ^
       ��皀爬��讚�_�癶モ痰▲����_��罧                             - ^
       ��．�讚覃_���ム                                            - ^

       // ***** ����襯 �� ��゛�罐 *****

       ��━キ����┘                                           02  - ^
       ��▲���爿覃_���ム                                      03  - ^
       ��〓め���_���ム                                            - ^

       KatOsGrOsKodGr                                             - ^ 
       KatOsGrOsNameGr                                            - ^
       ���_����                                               04  - ^
       ����_�覩竅��                                           05  - ^

       *****  ��痰祚┼ � �爍��├�罔�  *****                   06
       ��痰祚�キ��_����                                           - ^
       ��痰祚�キ��_���ム                                          - ^

       ��痰祚�キ��_�矣�矣爿��_��む�Гカキ┘                       - ^
       ��痰祚�キ��_�癶モ痰▲����_��罧                             - ^

       ����_�爬�閧��_�_＜�_竍モ�                              07  - ^

       �ム〓�����讚��_痰�━�痰�                               08  - ^
       �皰━�痰�_��_��_イ┃�聶                                    - ^
       �祠��_��腮甄キ���_���珥├�罔�                          10  - ^
       �痰�皰膈��_痰�━�痰�                                   11  - ^

       �牀�_���ェ����_�甎��讌������                           09  - ^
       �牀�_蹣甎�����罔�_ぎ_��痰祚�キ��_��                        - ^
       �オ竕┤_痼��_蹣甎�����罔�_��                               - ^
       ���皋腑瓷┤_痼��_蹣甎�����罔�_��                           - ^

       �祠��_���珥├�罔�                                          - ^
       �祠��_���珥├�罔�_｡螢�皰�                                 - ^
       �祠��_���珥├�罔�_��痰祚                                   - ^
       �祠��_���珥├�罔�_｡螢�皰�_��痰祚                          - ^
       ����_������_���珥├�罔�                                    - ^
       ����_���ユ_���珥├�罔�                                     - ^

       ����_��甄イ�ォ_��腮甄キ���_���珥├�罔�                     - ^
       ����爬皙_��腮甄キ��_���珥├�罔�                            - ^


       *****  �襦覊 (�ムイ��) ****                            15
       �襦覊�                                                     - ^
       �襦謔��_����                                               - ^
       �襦謔��_���ム                                              - ^
       踸腮��_�襦謔��                                        16  - ^

       ����_���������_��腮甄キ��                                  - ^


       { ***** ������ ***** �┴� �� �ムギ罐��� *****
.{ CheckEnter CycleByOverAppreciated // CycleByPercen // overestimation MoveOS.SysOper
         { ------------ *** �┴� �� �ムギ罐��� ***
           �ムギ罐���_����                                    12  - ^
           �┓_��ム�罔�                                           - ^
           �ムギ罐���_��辟筥罔キ�_�ムメ腑��_�ムギ罐���        13  - ^
           �ムギ罐���_〓瘁����※皀�讚��_痰�━�痰�             14  - ^
         } ------------ *** �┴� �� �ムギ罐��� ***
.}
       } ***** ���ユ  ***** �┴� �� �ムギ罐��� *****

       { ***** ������ ***** �┴� �� ���珥├�罔� *****
.{ CheckEnter CycleByAmortization
         { ------------ *** �┴� �� ���珥├�罔� ***
           ���珥├�罔�_ArcIznosNRec                               - ^
           ���珥├�罔�_VidNormaNRec                               - ^

           ���珥├�罔�_����                                       - ^
           ���珥├�罔�_��爼�                                      - ^
           ���珥├�罔�_���                                        - ^
           ���珥├�罔�_�祠��                                      - ^
           ���珥├�罔�_������キ�                                  - ^
           ���珥├�罔�_SpMoveOSNRec                               - ^ 
           ���珥├�罔�_皋�_��ム�罔�                               - ^
         } ------------ *** �┴� �� ���珥├�罔� ***
.}
       } ***** ���ユ  ***** �┴� �� ���珥├�罔� *****
     } ------------------- *** �┴� �� ��珥�腦�� ***

         ***** !!! ｯム�罔� � ����覃 罔�� ＜ゃ� ぎ��←閧赱� �� �ム� �ギ≦�え��痰�...        *****
         ***** !!! ��Й���碎 �� ��Ν� ＜ぅ� �� 皋�� SpMoveOs.SysOper � ���� ｯム�罔�_�┓... *****
       { ***** ������ ***** �┴� �� �痰��讚覓 ��ム�罔鍖 *****
.{ CheckEnter CycleByOperation
         { ------------ *** �┴� �� �痰��讚覓 ��ム�罔鍖 ***
           ｯム�罔�_�┓                                          - ^ // 蹣※���キ皚� - SpMoveOs.SysOper
           ｯム�罔�_����                                         - ^
           ｯム�罔�_���ム                                        - ^
           ｯム�罔�_�甅����┘                                    - ^
           ｯム�罔�_��む                                         - ^
           ｯム�罔�_���                                          - ^
           �皰━�痰�_��_�♂ゥ_����腑痰〓                         - ^
         } ------------ *** �┴� �� �痰��讚覓 ��ム�罔鍖 ***
.}
       } ***** ���ユ  ***** �┴� �� �痰��讚覓 ��ム�罔鍖 *****
.}
   } ***** ���ユ  ***** �┴� �� ��珥�腦�� *****
 } ***** ���ユ 筮爼� *****
.} // ���ユ 筮爼�
.endform
