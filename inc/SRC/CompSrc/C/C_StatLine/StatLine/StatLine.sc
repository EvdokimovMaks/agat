//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
//------------------------------------------------------------------------------
// ���⥬�       : ���������
// �����        : 8.0
// �����祭��    : �� ����� - �����
// �⢥�ᢥ���  :
//------------------------------------------------------------------------------

!-------------------------------------------------------------------------------
StatGal StatusLine
{
   #include StatDefs.inc        // �������� define ��� ����� �����
   #include StdLine.rc1         // �⫠���
   #include StdZar.sc           // ��௫��
   #include FA.sc               // �����ᮢ� ������
   #include F_Pat.sc            // ������ ��� ���������� F_PAT
   #include F_alg.sc            // ������ ��� ���������� F_ALG
   #include AllStat.sc
   #include Sct.sc              // �⠭����� ������ � cmInsert
   #include class.sc            // �����䨪���
   #include statmbp.sc          // ��� ᯥ�᭠�⪨
   #include statsfo.sc          // ���殤����
   #include intclass.sc         // ?! ���஥���� �����䨪���
   #include docbas.sc           // ���㬥�⮮����
   #include market.sc           // ��થ⨭�
   #include ap.sc               // �����஢���� (��஥)
   #include staffall.sc         // �����
   #include stafcard.sc         // ������ ��筠� ����窠
   #include staff_f2.sc         // ��筠� ����窠 �� �ଥ �2
   #ifdef Use_VDE
     #include vdestat.sc        // VDE
   #end
   #ifdef __SKYSHOP__
     #include sky.sc
   #end
   #include statuses.sc
   #include tppstats.sc
   #include tepansta.sc
   #include scmick.sc
   #include Tree.sc
   #include Remont.sc           // ��ࠢ����� ६��⠬�
   #include mKlient.sc          // ����� � �����⠬�
   #include Avtosta.sc          // ����࠭ᯮ��
   #include SoprHoz.sc
   #include BlStat.sc
   #include AnStat.sc           // ��௫��
   #include Eugen.sc
   #include sfres.sc
#ifdef GAL7_12
   #include DataExport.sc       // ��ᯮ�� ������ �� ���譥� �࠭���� (OLAP)
#endif
   ("ZReport")
   ("StatLine_ZBANKCARD")
   ("PL_StatLine")
   ("StatLine_User_Ex1")  //�� 102.154222 �㦭� ���짮��⥫�᪨� �窨 ������祭�� ��� �⠭���⭮� ����� ��ப� StatGal
   ("StatLine_User_Ex2")
   ("StatLine_User_Ex3")
   ("StatLine_User_Ex4")
   ("StatLine_User_Ex5")
   #include StdLine.rc2         // �⫠���
   #include StdLine.rc3         // �⫠��� - ������ ���� ��᫥���� �� ����ᮢ !!!
}
!-------------------------------------------------------------------------------
