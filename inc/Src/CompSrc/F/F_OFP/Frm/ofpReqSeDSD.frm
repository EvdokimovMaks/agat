//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ����� "���⥦�� ���������"
// ������ �㦥���� ����᮪ �� ������
//------------------------------------------------------------------------------

#doc
������� �ଠ - ������ �㦥���� ����᮪ �� ������
#end
.set name = 'ofpReqSeDSD'
.hide
.Fields
  Title                  // ������ ���
  dates                  // � ��
  Title_��_���ﭨ�     // �� ���ﭨ� �� ...

  DocReq_nRec            // nRec ���
  DocName:string:'t:r'   // �� 㤠��� �஡��� ᫥��  //
  Valuta                 // �����
  Summa1                 // �㬬� ���
  
  ���_�����                                        // 01  ����� ��� �� ������.                                                           
  ���_�㬬����                                  // 02  �㬬� ��� �� ������.                                                           
  ���_�㬬����                                     // 03  �㬬� ��� ���                                                                  
  ���_�㬬��ᯮ������                              // 04  �㬬� �ᯮ������ �� ���                                                        
  ���_����⠇��                                 // 05  ������������ ������ �� ���                                                     
  ���_����⠈ᯮ������                             // 06  ������������ ������ �ᯮ������                                                    
                                                                                                                                               
  ���_��⠐��������                                // 07  ॣ�����⭠� ��� ���⥦� (���⥦ �� �������) �� ��� �� ������.                
  ���_����搥�������                               // 08  ����� ॣ�����⭮�� ���⥦� (���⥦ �� �������) �� ��� �� ������.              
  ���_���������������                              // 09  ������ ॣ�����⭮�� ���⥦� (���⥦ �� �������) �� ��� �� ������.             
  ���_��⠂����                                    // 10  ��� ��� �� ������.                                                            
                                                                                                                                               
  ���_���ࠣ���_������������                       // 11  ������������ �����⥫� ���⥦� �� ��� �� ������.                              
  ���_�����祭�����⥦�                            // 12  �����祭�� ���⥦� �� ��� �� ������.                                           
  ���_�ਧ������⥦�                               // 13  ����� 2-� �࠭�                                                                   

  �������_������������                                // 14  ����� ������� �� ��� �� ������.                                           
  ��������襭��_������������                          // 15  ����� ᯥ�䨪�樨 �������, ����� 㪠��� � ��� �� ������.               
  ���_������������                                    // 16  ����� ���, ����� 㪠��� � ��� �� ������.                                 
  ��_������������                                     // 17  ����� �� �� ��� �� ������.                                                 
  ���䠪���_������������                            // 18  �� �� ��������, ��⠬.                                                       
  ���������_������������                              // 19  ����� ⮢�୮� ���������.                                                     
  ���_������������                                    // 20  ����� ��� �믮������� ࠡ��.                                                 
  ��ꪥ���ந⥫��⢠_������������                   // 21  ������������ ��ꥪ� ��ந⥫��⢠ �� �������, 㪠������� � ��� �� ������.
  ��ꪥ���ந⥫��⢠_���                            // 22  ��� ��ꥪ� ��ந⥫��⢠ �� �������, 㪠������� � ��� �� ������.         

  ���_������_����㬬�_�_���                        // 23 
  ���_������_��।���_���                          // 24                                               
  ���_������_���_����祭��_���                    // 25  ���_����祭��_��������_���㬥�⮢_��_������
  ���_������_�ਬ�砭��                            // 26                                               
  ���_������_������᪠�_��࠭��                   // 27                                               
  ���_������_����祭��                             // 28                                               
  ���_������_�����������                           // 29                                               
  ���_������_���쬮_���⠭��                      // 30                                               
  ���_������_��ࠢ��                               // 31                                               
  ���_������_���_���㬥��                         // 32
.endFields

 ^ ^ ^
.{  DocReqDSD_Group CheckEnter
 ^ ^ ^ ^ 
.{  DocReqDSD_Leaf CheckEnter
 ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}//DocReqDSD_Leaf

.}//DocReqDSD_Group

.endform

//------------------------------------------------------------------------------
#doc
������ �㦥���� ����᮪ �� ������
#end
.linkform 'ofpReqSeDSD01' prototype is 'ofpReqSeDSD'
.nameinlist '������ ���'
.p 80
.defo portrait
.Fields
  Title
  Title_��_���ﭨ�     // �� ���ﭨ� �� ...

  ���_�����
  �������_������������
  ���_���ࠣ���_������������

  ��������襭��_������������
  ��_������������
  ���䠪���_������������
  ���������_������������
  ���_������������

  ���_�����祭�����⥦�
  ��ꪥ���ந⥫��⢠_������������
  ��ꪥ���ந⥫��⢠_���         

  ���_�㬬����
  ���_�㬬����

  ���_������_����㬬�_�_���
  ���_����⠈ᯮ������
  ���_������_��।���_���
  ���_�㬬��ᯮ������
  ���_��⠐��������
  ���_����搥�������
  ���_���������������

  ���_������_���_����祭��_���
  ���_��⠂����
  ���_������_�ਬ�砭��
  ���_������_������᪠�_��࠭��
  ���_������_����祭��
  ���_������_�����������
  ���_������_���쬮_���⠭��
  ���_������_��ࠢ��
  ���_������_���_���㬥��
  ���_�ਧ������⥦�
.endFields
.[H Skip
                                                                                                                                                                                                                                            ���� @np@
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
  1   �   2    �     3    �  4  �  5   �   6   �   7   � 8  �    9     �     10     �   11  �   12  � 13  �   14   �  15  �   16   �   17   �  18  �  19  �  20  �  21  �  22  �    23    �  24 �    25   �     26    �    27   �   28  �    29   � 30  
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H

      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
      �        �          � ���㬥���-�᭮����� ��� ���⥦� �          �            �       ��㬬� ��  �  �        �      �        �        �      �      �      � ��� � ��� �          ����� �         �           �         �       �         ������
   �  �    �   �          ����������������������������������č����祭����������������  ���  ������ � �.�.�����㬬������⠳��।��������祭�� ��� ������ �������������.������ⳏਬ�砭�����࠭�����祭������������������쬮 �,���ࠢ���   ���   � 2-�
����������࠳�����⥫쳑��� �  ��  ���.䠪ⳍ���������� � ���⥦�  �  ��ꥪ�   ���ꥪ⠳ � ��� � ��� � � ���  �      �  ���   � � ���  ������볮�����      � ���  �  ��  �          ���  �         �           ����⠭��       ����㬥�⠳�࠭�
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
   1  �    2   �     3    �  4  �  5   �   6   �   7   � 8  �    9     �     10     �   11  �   12  � 13  �   14   �  15  �   16   �   17   �  18  �  19  �  20  �  21  �  22  �    23    � 24  �    25   �     26    �    27   �  28   �    29   � 30  
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{  DocReqDSD_Group CheckEnter
.{  DocReqDSD_Leaf CheckEnter
@@@@@@�@@@@@@@@�@@@@@@@@@@�@@@@@�@@@@@@�@@@@@@@�@@@@@@@�@@@@�@@@@@@@@@@�@@@@@@@@@@@@�@@@@@@@�&'&&&&&�&'&&&�&'&&&&&&�@@@@@@�@@@@@@@@�&'&&&&&&�@@@@@@�@@@@@@�@@@@@@�@@@@@@�@@@@@@�@@@@@@@@@@�@@@@@�@@@@@@@@@�@@@@@@@@@@@�@@@@@@@@@�@@@@@@@�@@@@@@@@@�@@@@@
.}//DocReqDSD_Leaf
.}//DocReqDSD_Group

.endform
//------------------------------------------------------------------------------

