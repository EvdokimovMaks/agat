//-----------------------------------------------------------------------------
//                                                     (c) ��௮��� ���������
// �����⨪� 8.10 - ��ࠡ�⭠� ����
// ��ଠ ���⨯ ��� �ନ஢���� �ࠢ�� 2-����
//-----------------------------------------------------------------------------
#doc
����-2
#end
.Linkform 'NDFL2_XML' prototype 'NDFL2_prototype'
.nameinlist '���� ������ � �ଠ� XML c 2012 ����'
.F 'NdflX2012.XML'
.group 'Ndfl_2012'
.var 
 ����1             : double;
 ����2             : double; 
 boPrint, 
 VichPrint         : boolean;
.endvar
.fields
ANSI2OEM(���_䠩��)
.endFields
.{ Main_Cycle_2NDFL CheckEnter
<?xml version="1.0" encoding="windows-1251"?>
#ifdef Gal9_1
<���� ������="^" ����ண="�����⨪� 9.10" ���ᔮ�="5.03">
#else
<���� ������="^" ����ண="�����⨪� 8.10" ���ᔮ�="5.03">
#endif
.fields
 �����������������
 �����
 ���
 �ਧ���
.endfields
  <������ ^="^" ���⃮�="^" �ਧ���� = "^">
.{?INTERNAL; (����� = 0)
.fields
 ���
 ��� 
.endfields
    <���� �����="^" ���="^"></����>
.}
.{?INTERNAL; (����� <> 0)
.fields
 ���
.endfields
    <���� �����="^"></����>
.}
  </������>
.{ Person_Cycle_2NDFL CheckEnter
.fields
  ���
  ���  
  �����
  �ਧ���
  ����
  �����������������
  �����  
  ����䮭  
.endfields
  <���㬥�� ���="1151078" ��⠄��="^" ���⃮�="^" ������="^" �ਧ���="^" �����="^">
    <���� ^="^"
.{?INTERNAL; (Trim(����䮭) <> '')
    ���="^"
.}
    >
.{?INTERNAL; (����� = 0)
.fields
  Replace(�࣠������, '"', '&quot;')
  ���
  ���
.endfields
      <������ ������="^" �����="^" ���="^"></������>
.}
.{?INTERNAL; (����� <> 0)
.fields
  ���
  �����
  ����
  ����
.endfields 
      <������ �����="^">
        <��� �������="^" ���="^"
.{?INTERNAL; (Trim(����) <> '')
        ����⢮="^"
.}
      ></���>
      </������>
.}
    </����>
.fields  
  ���_���������⥫�騪�
  �����
  ���_஦�����
  �ࠦ����⢮
.endfields
    <����焮�
.{?internal; (Trim(���_���������⥫�騪�) <> '')
      �����="^"
.}
      �����="^" ��⠐���="^" �ࠦ�="^">
.fields
  �������
  ���
  ����⢮
  ���_���㬥��
  ����_�����_���㬥��
  �����ᐔ
  ������������
  �������
  ��த��
  ���㭪␔
  replace(���栐�,'"','')
  replace(�����,'"','')
  replace(����ᐔ,'"','')
  replace(�����ࠐ�,'"','')
  replace(�����࠭�஦������,'"','')
  replace(����멀���,'"','')
.endFields
      <��� �������="^" ���="^"
.{?INTERNAL; (Trim(����⢮) <> '')
      ����⢮="^"
.}
      ></���>
      <����答� ��������="^" ���������="^"></����答�>
.{?INTERNAL; (trim(�����ᐔ) <> '') or (trim(������������) <> '')
      <�������
.{?INTERNAL; (trim(�����ᐔ)<>'')
        ������="^"
.}
        ���������="^"
.{?INTERNAL; (trim(�������)<>'')
        �����="^"
.}
.{?INTERNAL; (trim(��த��)<>'')
        ��த="^"
.}
.{?INTERNAL; (trim(���㭪␔)<>'')
        ��ᥫ�㭪�="^"
.}
.{?INTERNAL; (trim(���栐�)<>'')
        ����="^"
.}
.{?INTERNAL; (trim(�����)<>'')
        ���="^"
.}
.{?INTERNAL; (trim(����ᐔ)<>'')
        �����="^"
.}
.{?INTERNAL; (trim(�����ࠐ�)<>'')
        �����="^"
.}
        ></�������>
.}
.{?INTERNAL; (trim(����멀���) <> '')
      <������ ������="^" ��������="^"></������>
.}
    </����焮�>
.fields
 �⠢��_������
 �����_��1 ���_��室�_��1 �㬬�_��室�_��1 ���_����_��1 �㬬�_����_��1
 �����_��2 ���_��室�_��2 �㬬�_��室�_��2 ���_����_��2 �㬬�_����_��2
.endfields
.{ Percent_Cycle_2NDFL CheckEnter
   <�������  �⠢��="^">
      <�����>
.{ Incom_Cycle_2NDFL CheckEnter
.{?INTERNAL; (Double(�㬬�_��室�_��1) <> 0)
        <���㬄�� �����="^" �����室="^" �㬄�室="^">
.{?INTERNAL; (Double(�㬬�_����_��1) <> 0)
          <���㬂�� �������="^" �㬂���="^"/>
.}
        </���㬄��>
.}
.{?INTERNAL; (Double(�㬬�_��室�_��2) <> 0)
        <���㬄�� �����="^" �����室="^" �㬄�室="^">
.{?INTERNAL; (Double(�㬬�_����_��2) <> 0)
          <���㬂�� �������="^" �㬂���="^"/>
.}
        </���㬄��>
.}
.}//Incom_Cycle_2NDFL CheckEnter
      </�����>
.fields
 ���_����_1     �㬬�_����_1
 ���_����_2     �㬬�_����_2
 ���_����_3     �㬬�_����_3
 ���_����_4     �㬬�_����_4
.endfields
.begin
 boPrint := false;
 VichPrint := false;
end.
.{ Discount_Cycle_2NDFL CheckEnter
.begin
 boPrint  := false;  
 if (Double(�㬬�_����_1) <> 0)
   boPrint := true
 else
   if (Double(�㬬�_����_2) <> 0) 
     boPrint := true
     else
       if (Double(�㬬�_����_3) <> 0)
         boPrint := true
           else
             if (Double(�㬬�_����_4) <> 0) 
               boPrint := true;
end.
.{?INTERNAL; (boPrint = true) and (VichPrint = false);
       <�����瑑�>
.begin 
 VichPrint:= true;
end.
.}
.{?INTERNAL; (Double(�㬬�_����_1) <> 0);
        <�।��瑑� �������="^" �㬂���="^"></�।��瑑�>
.}
.{?INTERNAL; (Double(�㬬�_����_2) <> 0);
        <�।��瑑� �������="^" �㬂���="^"></�।��瑑�>
.}
.{?INTERNAL; (Double(�㬬�_����_3) <> 0);
        <�।��瑑� �������="^" �㬂���="^"></�।��瑑�>
.}
.{?INTERNAL; (Double(�㬬�_����_4) <> 0);
        <�।��瑑� �������="^" �㬂���="^"></�।��瑑�>
.}
.}//Discount_Cycle_2NDFL CheckEnter
.fields
  ��������������
  ��⠂뤠稓���
  ����뤠������
.endfields
.{ Info_DiscountSoc_Cycle_2NDFL CheckEnter
.}
.{ Info_Discount_Cycle_2NDFL CheckEnter
.{?INTERNAL; (trim(��������������) <> '') or (trim(��⠂뤠稓���) <> '') or (trim(����뤠������) <> '')
        <���������� ���������="^" ��⠓���="^"  ��������="^"></����������>
.}       
.}//Info_Discount_Cycle_2NDFL CheckEnter
.{?INTERNAL; (VichPrint = true);
       </�����瑑�>
.}
.begin
 ����1 := 0;
 ����2 := 0;
 if ( �㬬���������� > �㬬��������� )
   ����2 := �㬬���������� - �㬬���������
 else
   if ( �㬬���������� < �㬬��������� )
     ����1 := �㬬���������  - �㬬����������
end.
.fields
 �㬬���室�     
 �������         
 �㬬����������  
 �㬬���������   
 �㬬�����������
 ����1
 ����2
.endfields
      <���������
        �㬄�厡�="^" �������="^" �������="^" �������="^"
        ��������="^"
        ������ঋ��="^" ���������="^"/>
    </�������>
.{ Info_DiscountAvPlat_Cycle_2NDFL CheckEnter
.}
.}
  </���㬥��>
.}
</����>
.}
.endform
