.LinkForm 'foPlPorRepRCKOut_1C_New' Prototype is 'foPlPorRepRCKOut'
.NameInList '���⥦�� ����祭�� � �ଠ� 1�'
.fields 
//����� ���⥦���� ���㬥��
if(Tidk=1,DocBasFn866To1251('�����㬥��=���⥦��� ����祭��'),DocBasFn866To1251('�����㬥��=���⥦��� �ॡ������'))
DocBasFn866To1251('�����='+Nodok)
DocBasFn866To1251('���='+Replace(String(Datvip),'/','.'))
DocBasFn866To1251('�㬬�='+DoubleToStr(round(Sumplat,2),'666666666666666666666.88'))
//४������ ���⥫�騪�
DocBasFn866To1251('���⥫�騪���='+PlatSchet)
DocBasFn866To1251('���⥫�騪���='+PlatUNN)
DocBasFn866To1251('���⥫�騪���='+Denosch2)
DocBasFn866To1251('���⥫�騪='+PlatName)
DocBasFn866To1251('���⥫�騪���='+PlatMFO)
//४������ �����⥫�
DocBasFn866To1251('�����⥫���='+PolSchet)                             
DocBasFn866To1251('�����⥫숍�='+PolUNN)
DocBasFn866To1251('�����⥫슏�='+PolKodPlatNDS)
DocBasFn866To1251('�����⥫�='+PolName)
DocBasFn866To1251('�����⥫쁈�='+PolMFO)
//४������ ���⥦�
DocBasFn866To1251('������⥦�='+'�����஭��')
//DocBasFn866To1251('������⥦�='+'')
DocBasFn866To1251('���������='+vidoper)
DocBasFn866To1251('��।�����='+replace(kodnew,'0',''))
//���� ��� ���
DocBasFn866To1251('������ப�')
DocBasFn866To1251('�������᪨������䨪���='+Replace(sKBK,'-',''))
DocBasFn866To1251('�����䨪���1='+sPodrRCK)
DocBasFn866To1251('�㬬���ப�='+DoubleToStr(round(KBKSum,2),'666666666666666666666.88'))
DocBasFn866To1251('������ப�')
DocBasFn866To1251('�����祭�����⥦�='+NamePL)
//�������⥫�� ४������ ��� ���⥦�� � ����� ��⥬� ��
DocBasFn866To1251('����ᑮ�⠢�⥫�='+ExtractDelimitedWord(tax,1,';'))    //tax_status
DocBasFn866To1251('������⥫슁�='+ExtractDelimitedWord(tax,2,';'))        //tax_kbk
DocBasFn866To1251('�����='+ExtractDelimitedWord(tax,3,';'))                //okato
DocBasFn866To1251('������⥫�᭮�����='+ExtractDelimitedWord(tax,4,';'))  //tax_reason
DocBasFn866To1251('������⥫쏥ਮ��='+ExtractDelimitedWord(tax,5,';'))    //tax_period
DocBasFn866To1251('������⥫썮���='+ExtractDelimitedWord(tax,6,';'))     //tax_number
DocBasFn866To1251('������⥫선��='+ExtractDelimitedWord(tax,7,';'))       //tax_date
DocBasFn866To1251('������⥫쒨��='+ExtractDelimitedWord(tax,8,';'))       //tax_type
DocBasFn866To1251('�ਬ�砭��=')
DocBasFn866To1251('�������਩=')
//��������� ��� ᮣ��ᮢ���� ������� �� ���⥦ ��� ���
DocBasFn866To1251('GKEY='+nrec)
DocBasFn866To1251('�ਧ�����=1')
DocBasFn866To1251('����='+sSroch)
DocBasFn866To1251('���樠��='+Loginname)
DocBasFn866To1251('���썠FTP='+sDogFTP)
DocBasFn866To1251('�������='+sDogName)
DocBasFn866To1251('�㬬�����������='+DoubleToStr(round(sDogSum,2),'666666666666666666666.88'))
DocBasFn866To1251('��㯯���='+PodOtchet)
//����� ���⥦���� ���㬥��
DocBasFn866To1251('����愮�㬥��')
//����� ॥��� ���⥦��� ���㬥�⮢
DocBasFn866To1251('����攠���')
.endfields
1CClientBankExchange
.{
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
.{ CheckKBKLoop CheckEnter
^
^
^
^
^
.}
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
.}
^
.endform
