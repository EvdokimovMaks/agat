//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - �����⨪�
// ���. ������ � �������� �த�樨
//******************************************************************************
#doc
����� �������� � ࠧ१� ������������
#end
.set name = 'TinySkl_W'
.hide
!.group '����� � ���஢��� �� ������������'
!.test
.var
  PriceED:double VPriceED:double
  DlinaDrob: byte;
! �� ���᪭� �����栬 ����७��
  begkol_otp:string begpr_otp:double begpv_otp:double
  addkol_otp:string addpr_otp:double addpv_otp:double
  subkol_otp:string subpr_otp:double subpv_otp:double
  endkol_otp:string endpr_otp:double endpv_otp:double
! �� ��ᮢ� �ࠪ���⨪��
  begkol_mas:string begpr_mas:double begpv_mas:double
  addkol_mas:string addpr_mas:double addpv_mas:double
  subkol_mas:string subpr_mas:double subpv_mas:double
  endkol_mas:string endpr_mas:double endpv_mas:double
.endvar
.fields
  sLesn  : string
  sObhod : string
  sPodr  : string
  sPerson: string
  sMOL   : string
  sMC    : string
  sParty : string
  begDat : date
  endDat : date
  recNat: comp
    SimNat : string
  recBas: comp
    SimBas : string
!.{ 横� �� �ᥬ ᪫����
  Sklad_nrec : comp
  Sklad      : string
!.{ 横� �� �ᥬ ��
!.if TinySkl00 �᫨ ���� ⮢��� ����樨 � �室��
! NomMC - ������������ ����� ��-�, ᥩ�� �� ���⠥��� ⮫쪮 � ����� �ଥ
  Party_nrec : comp
  MC_nrec    : comp
  NomMC      : string
  NameMC     : string
  NameED     : string
  NameOtpEd  : string
  koef_opt   : double
  koef_mas   : double
  begKol:double begSum:double begVSum:double begPri:double begVPri:double
  addKol:double addSum:double addVSum:double addPri:double addVPri:double
  subKol:double subSum:double subVSum:double subPri:double subVPri:double
  endKol:double endSum:double endVSum:double endPri:double endVPri:double
! NDS
    b_sumR_NDS:double b_sumB_NDS:double
    a_sumR_NDS:double a_sumB_NDS:double
    s_sumR_NDS:double s_sumB_NDS:double
    e_sumR_NDS:double e_sumB_NDS:double
!.end 00
!.} 横� �� �ᥬ ��
  begSSum:double begVSSum:double
  addSSum:double addVSSum:double
  subSSum:double subVSSum:double
  endSSum:double endVSSum:double
!.} 横� �� �ᥬ ᪫����
! �᫨ ���� �ନ����� �� �ᥬ ᪫����, � � ���� �뢮����� ���� �㬬�
!.if TinySkl01
  begSSSum:double begVSSSum:double
  addSSSum:double addVSSSum:double
  subSSSum:double subVSSSum:double
  endSSSum:double endVSSSum:double
!.end
  DataDoc: Date
  NomDoc
  Pokupatel
  NomKvart
  NameMCLes
  KolMCLes: Double
  Prim
  KolItogo: Double
.endfields
^ ^ ^ ^ ^ ^ ^
���� ^ ^
������ ^ ^
       ^ ^
.{
����� ^ ^
.{
.if TinySkl00_W
�� ^ ^ ^ ^ ^ ^
   ^ ^ ^ ^ ^
   ^ ^ ^ ^ ^
   ^ ^ ^ ^ ^
   ^ ^ ^ ^ ^
�����樥��� ^ ^
��� ^ ^ ^ ^ ^ ^ ^ ^
.begin
  PriceED:= begPri ; VPriceED:= begVPri ;
! �� ���᪭� �����栬 ����७��
  DlinaDrob:=GetDlinaDrob_forKol;
  begkol_otp:= trim(string(begKol/koef_opt, 20,DlinaDrob)) ; begpr_otp:= begPri*koef_opt ; begpv_otp:= begVPri*koef_opt ;
  addkol_otp:= trim(string(addKol/koef_opt, 20,DlinaDrob)) ; addpr_otp:= addPri*koef_opt ; addpv_otp:= addVPri*koef_opt ;
  subkol_otp:= trim(string(subKol/koef_opt, 20,DlinaDrob)) ; subpr_otp:= subPri*koef_opt ; subpv_otp:= subVPri*koef_opt ;
  endkol_otp:= trim(string(endKol/koef_opt, 20,DlinaDrob)) ; endpr_otp:= endPri*koef_opt ; endpv_otp:= endVPri*koef_opt ;
! �� ��ᮢ� �ࠪ���⨪��
  begkol_mas:= trim(string(begKol*koef_mas, 20,DlinaDrob)) ; begpr_mas:= begPri/koef_mas ; begpv_mas:= begVPri/koef_mas ;
  addkol_mas:= trim(string(addKol*koef_mas, 20,DlinaDrob)) ; addpr_mas:= addPri/koef_mas ; addpv_mas:= addVPri/koef_mas ;
  subkol_mas:= trim(string(subKol*koef_mas, 20,DlinaDrob)) ; subpr_mas:= subPri/koef_mas ; subpv_mas:= subVPri/koef_mas ;
  endkol_mas:= trim(string(endKol*koef_mas, 20,DlinaDrob)) ; endpr_mas:= endPri/koef_mas ; endpv_mas:= endVPri/koef_mas ;
 end.
.end
.}
^^ ^^ ^^ ^^
.}
.if TinySkl01_W
^^ ^^ ^^ ^^
.end
------------------------ END
.{
  DataDoc ^
  NomDoc ^
  Pokupatel ^
  NomKvart ^
  NameMCLes ^
  KolMCLes ^
  Prim ^
.}
KolItogo ^
.endform
