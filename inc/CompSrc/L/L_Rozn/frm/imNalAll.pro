!浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
!�                     (c) 1994,2001 ��牆���罔� ���������                    �
!� 蹍オ�        : ���������                                                 �
!� ��痰ガ�       : ��竕メ癶�                                                 �
!� �ム瓱�        : 5.80                                                      �
!� ��Л�腑�┘    : �イ���痰� ����腮� ━竕メ癶�                               �
!� �癶モ痰▲��覃 : ���� ���え�                                               �
!藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�



#doc
�イ���痰� ����腮� ━竕メ癶�
#end
.set name='imNalAll'
.hide
.var
   Summa        :Double;  //�祠�� √�わ���
  VSumma        :Double;  //�祠�� √�わ���

   Itogo_mc_kol :Double;  //�皰�� ����腑痰�� �� ��
   Itogo_mc     :Double;  //�皰�� √��. �� ��
  vItogo_mc     :Double;  //�皰�� √��. �� �� � ���鈞�

   Itogo_gr     :Double;  //�皰�� √�� �� �珮��� ��
  vItogo_gr     :Double;  //�皰�� √�� �� �珮��� �� � ���鈞�

   Itogo_r      :Double;  //�皰�� √�� �� ��оェ�
  vItogo_r      :Double;  //�皰�� √�� �� ��оェ� � ���鈞�

   Itogo        :Double;  //�皰�� √�� �� �爛く爬閧��
  vItogo        :Double;  //�皰�� √�� �� �爛く爬閧�� � ���鈞�

  Itogo_RezMC   :Double;  //�ェム� �� ��
.endvar

.procedure FSRoundRub(var s:double);
begin
 s:=FRoundRub5(s);
end.

.procedure FSRoundVal(var s:double);
begin
 s:=FRoundVal5(s);
end.

!*****************************************************************************
!*********************** ����襯 **********************************************
.fields
  dDate :Date        //���� �砒モ�
  dDate2 :Date       //���� ��������� �ム┏��

  OrgName  :String   //��━キ����┘ �爍��├�罔�, �むメ � 皀�ヤ��
  UNN      :String   //���
  OKPO     :String   //����
  OKDP     :String   //����
  Org_Bank :String   //�����≡�┘ 爛�※Ж硅 �爍��├�罔�

  PodrName :String   //��━キ����┘ ��む�Гカキ��

  MolName  :String   //�.�.�. ��皀爬��讚� �癶モ痰▲����� ����
  MolTabN  :String   //��．�讚覃 ���ム ���
  MolDolg  :String   //ぎ�Ν�痰� ���

  typePrices :Word   //0 - 竍モ�襯 罐��; 1 - 罐�� 爛��├�罔�

  VNTar :String      //��━キ����┘ ���. か� �砒モ��
  VNBase :String     //��━キ����┘ ��М〓� ���鈞�

!.{
!. {
!.  if ImRepNeedObj1
     TitlRazr1 :String  //痰牀��: "��む�Гカキ┘", "���", "��珥��"
     NameRazr :String   //��━キ����┘ ��む�Гカキ��, ���, ��珥┬
     CodeRazr :String   //��� -- // --
!.  end

!.  {
!.   if ImRepNeedGroup1
      NameGroup :String  //��━キ����┘ �珮��� ��
      KodGroup :String   //��� �珮��� ��
!.   end

!.   {
      NameMC :String     //��━キ����┘ 皰����
      CodeMC :String     //���-��� 皰����
      NameEd :String     //イ. ├�ムキ��

!.    {
       nDoc :String       //���ム ぎ�祠キ�� �爬絎��
       dDoc :Date         //���� ぎ�祠キ��

       KontrName :String  //���矗��キ�(��痰�∫┴)
       KontrOKPO :String  //���� ���矗��キ��

       KVh :Double        //����腑痰〓 √�わ薀�
       KPrih :Double      //���-〓 �爬絎��
       KRash :Double      //����腑痰〓 ��痳���
       KMest :Double      //����腑痰〓 � �き�� �メ皀

       PriceU :Double     //�腑皚�� 罐��
       VPriceU :Double    //�腑皚�� 罐�� � ���鈞�
       PriceRoz :Double   //��Л�膈�� 罐��
       VPriceRoz :Double  //��Л�膈�� 罐�� � ���鈞�
       PriceR :Double     //�キ� 爛��├�罔�
       VPriceR :Double    //�キ� 爛��├�罔� � ���鈞�

       KEU :Double        //��辟� メ皀痰▲���� 磧覊�
       DelED :Word        //�カ━� �� イ. ├�. ( 0 �� )
       rezerv :Double     //�ェム� か� ����腮�
!.    }
!.   }

!.   if ImRepNeedGroup2
!.   end
!.  }

!.  if ImRepNeedObj2
     TitlRazr2 :String  //痰牀��: "��む�Гカキ��", "���", "��珥┬"
!.  end
!. }
!.}
.endfields

���� : ^
���� 2 : ^

��━キ����┘ �爍��├�罔�, �むメ � 皀�ヤ�� ^
��� �爍��├�罔�                           ^
���� �爍��├�罔�                          ^
���� �爍��├�罔�                          ^
�����≡�┘ 爛�※Ж硅 �爍��├�罔�          ^

��む�Гカキ┘       ^

�.�.�. ���          ^
��．�讚覃 ���ム ��� ^
ぎ�Ν�痰� ���       ^

���┘ 罐�� �ョ���碎 : ^
���鈞� か� �砒モ�� :  ^
��М��� ���鈞� :      ^

.{
.{
.if ImRepNeedObj1
  ��む�Гカキ┘, ��� ┼� ��珥�� : ^
  ��━キ����┘ ��оェ� : ^
  ��� ��оェ� : ^
.end
.begin
  Itogo_r     := 0;
  vItogo_r    := 0;
end.
.{
.if ImRepNeedGroup1
��━キ����┘ �珮��� �� : ^
��� �珮��� �� : ^
.end
.begin
  Itogo_gr     := 0;
  vItogo_gr    := 0;
end.
.{
��━キ����┘ 皰���� : ^
��� 皰���� : ^
竍モ��� イ┃��� ├�ムキ�� : ^
.begin
  Itogo_mc_kol := 0;
  Itogo_mc     := 0;
  vItogo_mc    := 0;

  Itogo_RezMC :=0;
end.
.{
____________________________________________________________________________
���祠キ� � :               ^
�� :                       ^
��痰�∫┴ :                ^
���� ��痰�∫┴� :          ^

��. ����腑痰〓 :           ^
����腑痰〓 �爬絎�� :       ^
����腑痰〓 ��痳��� :       ^
����腑痰〓 � �き�� �メ皀 : ^

�腑皚�� 罐�� :             ^
�腑皚�� 罐�� � ���鈞� :    ^
��Л�膈�� 罐�� :           ^
��Л�膈�� 罐�� � ���鈞� :  ^
�キ� 爛��├�罔� :          ^
�キ� 爛��├�罔� � ���鈞� : ^

KEU:    ^
DelED:  ^
Rezerv: ^
.begin
  Summa :=PriceU * KVh;FSRoundRub(Summa);
  vSumma :=vPriceU * KVh;FSRoundVal(vSumma);

  Itogo_mc_kol := Itogo_mc_kol + KVh;
  Itogo_mc := Itogo_mc + Summa;
  vItogo_mc := vItogo_mc + vSumma;

  Itogo_RezMC :=Itogo_RezMC + Rezerv;
end.
.}
.begin
  Itogo_gr := Itogo_gr + Itogo_mc;
  vItogo_gr := vItogo_gr + vItogo_mc;
end.
.}
.if ImRepNeedGroup2
.end
.begin
  Itogo_r := Itogo_r + Itogo_gr;
  vItogo_r := vItogo_r + vItogo_gr;
end.
.}
.if ImRepNeedObj2
��む�Гカキ��, ��� ┼� ��珥┬ : ^
.end
.begin
  Itogo := Itogo + Itogo_r;
  vItogo := vItogo + vItogo_r;
end.
.}
.}
.endform