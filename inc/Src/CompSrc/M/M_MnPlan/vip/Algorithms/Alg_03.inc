/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,01 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : �����஢����                                              �
 � �����        : 7.10                                                      �
 � �����祭��    : ��ନ஢���� ��室��� ���. ����⠭�� ����ன��        �
 � �⢥��⢥��� : ��࠭��᪨� ����ᥩ ���������� (Aleksis)                  �
 � ��ࠬ����     : ����                                                      �
 ���������������������������������������������������������������������������ͼ
*/
Const
//=======================================================================
// '���������-��������'
//-----------------------------------------------------------------------
 //'��⮤�
 methFixValue        = Word(0);  //'���祭�� �� ������ !!!
 methFromVid         = Word(1);
 methDocVal          = Word(2);
 methFromDocHdr      = Word(3);
 methFromDocSpec     = Word(4);
 methFromDocPos      = Word(5);
 methCurDate         = Word(6);

 //'�������⥫쭮
 //'��� ��筥���
 methNullExt         = Word(0);  //'���祭�� �� ������ !!!

 //'�।�⠢�����
 methFromVidExt1     = Word(1);
 methFromVidExt2     = Word(2);
 methFromVidExt3     = Word(3);
 methFromVidExt4     = Word(4);
 methFromVidExt5     = Word(5);

 //'��������� ���㬥��
 methFromDocHdrExt1  = Word(100);
 methFromDocHdrExt2  = Word(101);
 methFromDocHdrExt3  = Word(102);
 methFromDocHdrExt4  = Word(103);

 //'ᯥ�䨪��� ���㬥��
 methFromDocSpecExt1 = Word(200);
 methFromDocSpecExt2 = Word(201);
 methFromDocSpecExt3 = Word(202);
 methFromDocSpecExt4 = Word(203);
 methFromDocSpecExt5 = Word(204);
 methFromDocSpecExt6 = Word(205);

 //'������ ���㬥��
 methFromDocPosExt1  = Word(300);
 methFromDocPosExt2  = Word(301);
 methFromDocPosExt3  = Word(302);
 methFromDocPosExt4  = Word(303);
 methFromDocPosExt5  = Word(304);
 methFromDocPosExt6  = Word(305);

//=======================================================================
// '���������-������������'
//-----------------------------------------------------------------------
 //'��⮤�
 methFixValue_Name         : String = '䨪�.���祭��';
 methFromVid_Name          : String = '�।�⠢�����';
 methDocVal_Name           : String = '����� ���-�';
 methFromDocHdr_Name       : String = '��������� ���-�';
 methFromDocSpec_Name      : String = 'ᯥ�䨪��� ���-�';
 methFromDocPos_Name       : String = '������ ���-�';
 methCurDate_Name          : String = '⥪��� ���';

 //'�������⥫쭮
 //'��� ��筥���
 methNullExt_Name          : String = '���';

 //'�।�⠢�����
 methFromVidExt1_Name      : String = '��砫� ��ਮ��';
 methFromVidExt2_Name      : String = '����砭�� ��ਮ��';
 methFromVidExt3_Name      : String = '����砭�� �।��饣� ��ਮ��';
 methFromVidExt4_Name      : String = '��砫� ᫥���饣� ��ਮ��';
 methFromVidExt5_Name      : String = '�� ��䨪�';

 //'��������� ���㬥��
 methFromDocHdrExt1_Name   : String = '�����⨪� - ��砫� ��ਮ��';
 methFromDocHdrExt2_Name   : String = '�����⨪� - ����砭�� ��ਮ��';
 methFromDocHdrExt3_Name   : String = '�����⨪� - ����砭�� �।��饣� ��ਮ��';
 methFromDocHdrExt4_Name   : String = '�����⨪� - ��砫� ᫥���饣� ��ਮ��';
 methFromDocHdrExt5_Name   : String = '�����⨪�';

 //'ᯥ�䨪��� ���㬥��
 methFromDocSpecExt1_Name   : String = '�����⨪� - ��砫� ��ਮ��';
 methFromDocSpecExt2_Name   : String = '�����⨪� - ����砭�� ��ਮ��';
 methFromDocSpecExt3_Name   : String = '�����⨪� - ����砭�� �।��饣� ��ਮ��';
 methFromDocSpecExt4_Name   : String = '�����⨪� - ��砫� ᫥���饣� ��ਮ��';
 methFromDocSpecExt5_Name   : String = '�����⨪�';
 methFromDocSpecExt6_Name   : String = '��� ��砫�';
 methFromDocSpecExt7_Name   : String = '��� ����砭��';

 //'������ ���㬥��
 methFromDocPosExt1_Name   : String = '�����⨪� - ��砫� ��ਮ��';
 methFromDocPosExt2_Name   : String = '�����⨪� - ����砭�� ��ਮ��';
 methFromDocPosExt3_Name   : String = '�����⨪� - ����砭�� �।��饣� ��ਮ��';
 methFromDocPosExt4_Name   : String = '�����⨪� - ��砫� ᫥���饣� ��ਮ��';
 methFromDocPosExt5_Name   : String = '��� ���⠢��';
 methFromDocPosExt6_Name   : String = '��� ���㯪�';
 methFromDocPosExt7_Name   : String = '��� ������';
 methFromDocPosExt8_Name   : String = '��� ���ᯥ祭��';
 methFromDocPosExt9_Name   : String = '��� ����᪠';
 methFromDocPosExt10_Name  : String = '��� ���᪠';
 methFromDocPosExt11_Name  : String = '��� ���㧪�';
 methFromDocPosExt12_Name  : String = '��� �ਥ��';
 methFromDocPosExt13_Name  : String = '��� �ᯮ������';
 methFromDocPosExt14_Name  : String = '�����⨪�';
End