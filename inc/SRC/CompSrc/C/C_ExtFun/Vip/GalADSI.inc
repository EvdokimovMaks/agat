#doc
  �㭪�� ᮧ����� �᭮����� ��ꥪ� ��� ࠡ��� � ����䥩ᠬ� ������⥪� activeds.dll.
  ������� �ᯮ������: �᫨ ��ꥪ� �ᯥ譮 ᮧ���, � �����頥��� ��� ����, ���� 0.
#end
function ADSI_Create: #TPtr; external 'GalADSI.dll#ADSI_Create';

#doc
  �㭪�� �᢮�������� �᭮����� ��ꥪ� � �ᯮ����⥫��� ����ᮢ.
  �室�� ��ࠬ����:
    aADSI - ���� ADSI-��ꥪ�.
  ������� �ᯮ������: �᫨ ��ꥪ� �ᯥ譮 �᢮������, � �����頥��� True, ���� False.
#end
function ADSI_Free(aADSI: #TPtr): Boolean; external 'GalADSI.dll#ADSI_Free';

#doc
  �㭪�� ��⠭���� ��������� ��ࠬ��஢ ࠡ��� ������⥪�.
  �室�� ��ࠬ����:
    aParameters - ��ப� ��ࠬ��஢ �१ ࠧ����⥫� ';' (�窠 � ����⮩). ���祭�� ��ࠬ��� �������� ��᫥ ����� '='. ���ਬ��: 'EnableCP866=1;WorkingDirectory=D:\Temp'.
  �ᯮ��㥬� �������� ��ࠬ���� (��� ��ࠬ���� �����������):
    a) EnableCP866 - ��⠭�������� �ਧ��� ����室����� �������஢��� ����砥�� � ��।������ ��ப��� ���祭�� ��/� CP866 (OEM) ����஢��. �� 㬮�砭�� EnableCP866 ࠢ�� 'True'. �᫨ ࠢ�� 'False', � ����஢�� �㤥� ��⥬��� (Windows 1251). ����� ��ࠬ��� ������ ���� ����, �.�. �� ��।���� � ����� ����஢�� ���� ��᫥���騥 �� ��� ��ப��� ��ࠬ����. �ਭ������ ���祭��: 'True', 'False', '1' � '0';
    b) WorkingDirectory - ��⠭���� ࠡ�祩 ����� ��� ��࠭���� ���� �᪫�祭�� 'galadsi.txt', ������� ���祭�� ��ਡ�⮢ ��ꥪ⮢ (���ਬ��, �⮣�䨩 ��ꥪ� ����� '���짮��⥫�') � ��� ������ � CSV-䠩� (� ������� �㭪樨 ADSI_DirectorySearch_SaveDataToFile). ����� ��ࠬ��� ��⠭���������� ⮫쪮 ���� ࠧ. �� 㬮�砭�� ���祭�� ���⮥ � ����� ���� ��࠭����� �⭮�⥫쭮 ��� �ᯮ��塞��� �����.
  ������� �ᯮ������: �᫨ ��ࠬ���� �ᯥ譮 ��⠭������, � �����頥��� True, ���� False.
#end
function ADSI_SetParameters(aParameters: String): Boolean; external 'GalADSI.dll#ADSI_SetParameters';

#doc
  �㭪�� �ᯮ������ ����� �� �롮�� ������ � �㦡� ��⠫����.
  �室�� ��ࠬ����:
    a) aADSI - ���� ADSI-��ꥪ�;
    b) aDirectoryServicePath - ��ப�, 㪠�뢠��� ����, �ᯮ��㥬� ��� �ਢ離� � ��ꥪ�� � �㦡� ��⠫����. ����� https://msdn.microsoft.com/en-us/library/aa746384(v=vs.85).aspx;
    c) aSearchFilter - ��ப� 䨫��� ���᪠ � �ଠ� LDAP. ���ਬ��, '(objectClass=user)';
    d) aAttributeNames - ��ப� ���� ��ਡ�⮢, ��� ������ ����訢����� �����, �१ ࠧ����⥫� ';' (�窠 � ����⮩). ���ਬ��: 'name;samAccountName;ADsPath;memberOf'. ��� ����祭�� ��� ��ਡ�⮢ ��ꥪ� ����� �ᯮ�짮���� ���� '*'.
  ������� �ᯮ������: �᫨ ����� �ᯥ譮 �믮���� � �� ���� ����祭� �����, � �����頥��� True, ���� False.
#end
function ADSI_DirectorySearch_Execute(aADSI: #TPtr, aDirectoryServicePath: String, aSearchFilter: String, aAttributeNames: String): Boolean; external 'GalADSI.dll#ADSI_DirectorySearch_Execute';

#doc
  �㭪�� ����祭�� ࠧ��୮�� ������ �� �ᯥ譮� �ᯮ������ ����� �� �롮�� ������ � �㦡� ��⠫����.
  �室�� ��ࠬ����:
    a) aADSI - ���� ADSI-��ꥪ�;
    b) aDimensionType - ��।���� ⨯ �����頥��� ࠧ��୮��. �ਭ����� ���祭��: 0 - ��� ������ ������⢠ ��ப ������; 1 - ��� ������ ������⢠ ������� ������. ������⢮ ������� ᮮ⢥����� �������� ���� ��ਡ�⮢, � �������� �१ �㭪�� ADSI_DirectorySearch_Execute ��� �������� ��� ��ਡ�⮢ �� �ᯮ�짮����� ��᪨ '*'). ��� ���祭�� ��ࠬ��� ������������;
  ������� �ᯮ������: �᫨ ����� �� ������ ���४⭮ ����祭� � ����� ࠧ��୮��� ��������� ⨯�, � �����頥��� ���祭�� ࠧ��୮��, ���� 0.
#end
function ADSI_DirectorySearch_GetDataSize(aADSI: #TPtr, aDimensionType: LongInt): LongInt; external 'GalADSI.dll#ADSI_DirectorySearch_GetDataSize';

#doc
  �㭪�� ����祭�� ��ப����� ���祭�� ��ਡ�� �� ������ �� �ᯥ譮� �ᯮ������ ����� �� �롮�� ������ � �㦡� ��⠫����.
  �室�� ��ࠬ����:
    a) aADSI - ���� ADSI-��ꥪ�;
    b) aRowIndex - ������ ��ப� ������. �������� ��ப ��稭����� � 0. ������⢮ ��ப ����砥��� � ������� �㭪樨 ADSI_DirectorySearch_GetDataSize;
    c) aColumnIndex - ������ ������� ������. �������� ������� ��稭����� � 0. ������⢮ ������� ����砥��� � ������� �㭪樨 ADSI_DirectorySearch_GetDataSize.
    d) aChunk - ����砥�� ���� ������� ��ப�. �������� ����� ��稭����� � 0. ��-�� ��࠭�祭�� �몠 Vip �� ����� ��ப� 255 (ShortString) ��室����� ������ ��ப� ���뢠�� �������. �᫨ ��室��� ��ப� ��������� ����頥��� � ࠧ��� ����� 255, � �⥭�� �ந�室�� �� ���� �⠯ (aChunk = 0). ���� ����室��� ������ ��뢠�� ������ �㭪�� � 㢥��祭��� aChunk ���� ����� �����頥���� ��ப����� ���祭�� �㤥� ࠢ�� 255.
  ������ �㭪�� �������� �������� ᫥���騥 ⨯� ���祭�� ��ਡ��: ��ப���, �����᪨�, 楫��᫥���, ���/�६� (� ��⮬ �����쭮� ����), ᯨ��� (�������� ᯨ᪠ ��ꥤ������� �१ ࠧ����⥫� ';' � ��� ��ப� ��ࠬ����� �����묨 ����窠�� ('"item1;item2;item3;"')) � ������ (��࠭���� ���祭�� �믮������ � �⤥��� 䠩� � ������ ��ਡ��, ���浪��� ����஬ � ���७��� '.bin' ('thumbnailPhoto1528.bin')); �� �ᯥ譮� ��࠭���� 䠩�� �����頥��� ��ப���� ���祭�� �㤥� ᮤ�ঠ�� ࠧ��� 䠩�� � �����, ���� ����; ���� ��४�ਨ 䠩�� �������� ��ࠬ��஬ 'WorkingDirectory' � ������� �㭪樨 ADSI_SetParameters; �᫨ 䠩� 㦥 �������, � �� �㤥� ��१���ᠭ).
  ������� �ᯮ������: �����頥��� ��ப���� ���祭�� ��ਡ��.
#end
function ADSI_DirectorySearch_GetValue(aADSI: #TPtr, aRowIndex: LongInt, aColumnIndex: LongInt, aChunk: LongInt): String; external 'GalADSI.dll#ADSI_DirectorySearch_GetValue';

#doc
  �㭪�� ��࠭���� ������ �� �ᯥ譮� �ᯮ������ ����� �� �롮�� ������ � �㦡� ��⠫���� � ������� 䠩�.
  �室�� ��ࠬ����:
    a) aADSI - ���� ADSI-��ꥪ�;
    b) aFileName - ��� 䠩��, � ����� ��࠭����� �����. ����७�� 䠩�� ��������� �� '.csv' ��� ������ � Excel. �᫨ 䠩� 㦥 �������, � �� �㤥� ��१���ᠭ. ���� ��४�ਨ 䠩�� �������� ��ࠬ��஬ 'WorkingDirectory' � ������� �㭪樨 ADSI_SetParameters.
  ���祭�� ��� ������� (��ਡ�⮢) ����� ��ப� ��ꥤ������� �१ ࠧ����⥫� ';' � �����뢠���� � 䠩�.
  ������� �ᯮ������: �᫨ ����� �� ������ ���४⭮ ��࠭��� � 䠩�, � �����頥��� True, ���� False.
#end
function ADSI_DirectorySearch_SaveDataToFile(aADSI: #TPtr, aFileName: String): Boolean; external 'GalADSI.dll#ADSI_DirectorySearch_SaveDataToFile';

#doc
  �㭪�� ����祭�� ��ப����� ���祭�� ᢮��⢠ ��ꥪ� � �㦡� ��⠫����.
  �室�� ��ࠬ����:
    a) aADSI - ���� ADSI-��ꥪ�;
    b) aDirectoryServicePath - ��ப�, 㪠�뢠��� ����, �ᯮ��㥬� ��� �ਢ離� � ��ꥪ�� � �㦡� ��⠫����;
    c) aPropertyName - ��� ᢮��⢠ ��ꥪ� � �㦡� ��⠫����.
  ������� �ᯮ������: �����頥��� ��ப���� ���祭�� ᢮��⢠ ��ꥪ� � �㦡� ��⠫����.
#end
function ADSI_ADs_GetProperty(aADSI: #TPtr, aDirectoryServicePath: String, aPropertyName: String): String; external 'GalADSI.dll#ADSI_ADs_GetProperty';