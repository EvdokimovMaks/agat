/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,01 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : �����牀���┘                                              �
 � �ム瓱�        : 7.10                                                      �
 � ��Л�腑�┘    : ��爼�牀���┘ �痳�わ薑� ��錢��. ���痰��硅 ��痰牀���        �
 � �癶モ痰▲��覃 : ������≡�┤ ��オ瓮� �ギ�┐�※� (Aleksis)                  �
 � �����モ琺     : �痰�                                                      �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
Const
//=======================================================================
// '���������-��������'
//-----------------------------------------------------------------------
 //'�モ�る
 methFixValue        = Word(0);  //'Л�腑�┘ �� �キ閧� !!!
 methFromVid         = Word(1);
 methDocVal          = Word(2);
 methFromDocHdr      = Word(3);
 methFromDocSpec     = Word(4);
 methFromDocPos      = Word(5);
 methCurDate         = Word(6);

 //'ぎ�����皀�讚�
 //'�モ 竄�膈キ��
 methNullExt         = Word(0);  //'Л�腑�┘ �� �キ閧� !!!

 //'�爛め��←キ┘
 methFromVidExt1     = Word(1);
 methFromVidExt2     = Word(2);
 methFromVidExt3     = Word(3);
 methFromVidExt4     = Word(4);
 methFromVidExt5     = Word(5);

 //'������〓� ぎ�祠キ��
 methFromDocHdrExt1  = Word(100);
 methFromDocHdrExt2  = Word(101);
 methFromDocHdrExt3  = Word(102);
 methFromDocHdrExt4  = Word(103);

 //'甎ユ�筥��罔� ぎ�祠キ��
 methFromDocSpecExt1 = Word(200);
 methFromDocSpecExt2 = Word(201);
 methFromDocSpecExt3 = Word(202);
 methFromDocSpecExt4 = Word(203);
 methFromDocSpecExt5 = Word(204);
 methFromDocSpecExt6 = Word(205);

 //'��Ж罔� ぎ�祠キ��
 methFromDocPosExt1  = Word(300);
 methFromDocPosExt2  = Word(301);
 methFromDocPosExt3  = Word(302);
 methFromDocPosExt4  = Word(303);
 methFromDocPosExt5  = Word(304);
 methFromDocPosExt6  = Word(305);

//=======================================================================
// '���������-������������'
//-----------------------------------------------------------------------
 //'�モ�る
 methFixValue_Name         : String = '筥��.Л�腑�┘';
 methFromVid_Name          : String = '�爛め��←キ┘';
 methDocVal_Name           : String = '���鈞� ぎ�-��';
 methFromDocHdr_Name       : String = '������〓� ぎ�-��';
 methFromDocSpec_Name      : String = '甎ユ�筥��罔� ぎ�-��';
 methFromDocPos_Name       : String = '��Ж罔� ぎ�-��';
 methCurDate_Name          : String = '皀�竕�� ����';

 //'ぎ�����皀�讚�
 //'�モ 竄�膈キ��
 methNullExt_Name          : String = '�モ';

 //'�爛め��←キ┘
 methFromVidExt1_Name      : String = '������ �ム┏��';
 methFromVidExt2_Name      : String = '�������┘ �ム┏��';
 methFromVidExt3_Name      : String = '�������┘ �爛るゃ薀�� �ム┏��';
 methFromVidExt4_Name      : String = '������ 甄イ竡薀�� �ム┏��';
 methFromVidExt5_Name      : String = '�� ���筥��';

 //'������〓� ぎ�祠キ��
 methFromDocHdrExt1_Name   : String = '�����皋�� - ������ �ム┏��';
 methFromDocHdrExt2_Name   : String = '�����皋�� - �������┘ �ム┏��';
 methFromDocHdrExt3_Name   : String = '�����皋�� - �������┘ �爛るゃ薀�� �ム┏��';
 methFromDocHdrExt4_Name   : String = '�����皋�� - ������ 甄イ竡薀�� �ム┏��';
 methFromDocHdrExt5_Name   : String = '�����皋��';

 //'甎ユ�筥��罔� ぎ�祠キ��
 methFromDocSpecExt1_Name   : String = '�����皋�� - ������ �ム┏��';
 methFromDocSpecExt2_Name   : String = '�����皋�� - �������┘ �ム┏��';
 methFromDocSpecExt3_Name   : String = '�����皋�� - �������┘ �爛るゃ薀�� �ム┏��';
 methFromDocSpecExt4_Name   : String = '�����皋�� - ������ 甄イ竡薀�� �ム┏��';
 methFromDocSpecExt5_Name   : String = '�����皋��';
 methFromDocSpecExt6_Name   : String = '���� ������';
 methFromDocSpecExt7_Name   : String = '���� ���������';

 //'��Ж罔� ぎ�祠キ��
 methFromDocPosExt1_Name   : String = '�����皋�� - ������ �ム┏��';
 methFromDocPosExt2_Name   : String = '�����皋�� - �������┘ �ム┏��';
 methFromDocPosExt3_Name   : String = '�����皋�� - �������┘ �爛るゃ薀�� �ム┏��';
 methFromDocPosExt4_Name   : String = '�����皋�� - ������ 甄イ竡薀�� �ム┏��';
 methFromDocPosExt5_Name   : String = '���� ��痰�→�';
 methFromDocPosExt6_Name   : String = '���� ���祚��';
 methFromDocPosExt7_Name   : String = '���� ������';
 methFromDocPosExt8_Name   : String = '���� �．甎ョキ��';
 methFromDocPosExt9_Name   : String = '���� ���竅��';
 methFromDocPosExt10_Name  : String = '���� �覩竅��';
 methFromDocPosExt11_Name  : String = '���� �癸珮И�';
 methFromDocPosExt12_Name  : String = '���� �爬ガ�';
 methFromDocPosExt13_Name  : String = '���� �甎���キ��';
 methFromDocPosExt14_Name  : String = '�����皋��';
End