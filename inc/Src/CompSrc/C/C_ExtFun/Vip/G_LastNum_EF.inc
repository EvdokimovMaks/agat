/*

 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2004 ��牆���罔� ���������                    �
 � ��痰ガ�       : ���������                                                 �
 � 蹍オ�        : �む�                                                      �
 � �ム瓱�        : 5.84                                                      �
 � ��Л�腑�┘    : ��ヨ�┘ �牀罐ゃ琺 � 粃��罔� ├ G_LastNumD.dll             �
 � �癶モ痰▲��覃 : �ム��� �爬� �ゃ�爐�※�                                    �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

//------------------------------------------------------------------------------
// LastNum.pas
#doc
  </brief>

  <p>
    �キム�珮モ 甄イ竡薑� ���ム か� 礫�������� 皋�� ぎ�祠キ��, � 礫����┘� ぅ瓷爬�皰�� � か┃��� ���ム�.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>tab</code> - 皋� ぎ�祠キ��;</li>
    <li><code>sub</code> - ぅ瓷爬�皰�;</li>
    <li><code>len</code> - か┃�.</li>
  </ul>
#end
function GetLastNumD__(tab: Word, sub: String, len: Byte): String; external 'G_LastNumD.dll';
#doc
  </brief>

  <p>
    �キム�珮モ 甄イ竡薑� ���ム か� 礫�������� 皋�� ぎ�祠キ�� � ぅ瓷爬�皰��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>tab</code> - 皋� ぎ�祠キ��;</li>
    <li><code>sub</code> - ぅ瓷爬�皰�.</li>
  </ul>
#end
function GetLastNumD_(tab: Word, sub: String): String; external 'G_LastNumD.dll';
#doc
  </brief>

  <p>
    �キム�珮モ 甄イ竡薑� ���ム か� 礫�������� 皋�� ぎ�祠キ��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>tab</code> - 皋� ぎ�祠キ��.</li>
  </ul>
#end
function GetLastNumD(tab: Word): String; external 'G_LastNumD.dll';
#doc
  </brief>

  <p>
    ����錺� ��甄イ�┤ ���ム か� 礫�������� 皋�� ぎ�祠キ��, � 礫����┘� ぅ瓷爬�皰�� � ���ム�.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>tab</code> - 皋� ぎ�祠キ��;</li>
    <li><code>sub</code> - ぅ瓷爬�皰�;</li>
    <li><code>nom</code> - ���ム.</li>
  </ul>
#end
procedure DelLastNumD_(tab: Word, sub: String, nom: String); external 'G_LastNumD.dll';
#doc
  </brief>

  <p>
    ����錺� ��甄イ�┤ ���ム か� 礫�������� 皋�� ぎ�祠キ��, � 礫����┘� ィ� ��も┓�.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>tab</code> - 皋� ぎ�祠キ��;</li>
    <li><code>nom</code> - ���ム.</li>
  </ul>
#end
procedure DelLastNumD(tab: Word, nom: String); external 'G_LastNumD.dll';
#doc
  </brief>

  <p>
    ��Б����モ ��Б��┘ ぎ�祠キ�� �� ���ム�.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>tab</code> - 皋� ぎ�祠キ��.</li>
  </ul>
#end
function GetLNDname(tab: Word): String; external 'G_LastNumD.dll';
