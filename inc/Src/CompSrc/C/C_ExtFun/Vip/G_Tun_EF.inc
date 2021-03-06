/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2008 ��牆���罔� ���������                    �
 � ��痰ガ�       : ���������                                                 �
 � 蹍オ�        : �む�                                                      �
 � �ム瓱�        : 8.10                                                      �
 � ��Л�腑�┘    : ��ヨ�┘ �牀罐ゃ琺 � 粃��罔� ├ G_Tune.dll                 �
 � �癶モ痰▲��覃 :                                                           �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

//------------------------------------------------------------------------------
// GalTunes.pas
#doc
  </brief>

  <p>
    ��Б����モ ����覃 �竄� ぎ 礫������� ��痰牀���.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 ��痰牀���.</li>
  </ul>
#end
function GetTuneName(sKey: string): string; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ ━� ��痰牀��� �� �����モ珮.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 ��痰牀���.</li>
    <li><code>lObj</code> - 皋� 〓Б����ガ��� ━キ�.<br>
      ��Ε� �爬�━�碎 甄イ竡薑� Л�腑���:
      <ul>
        <li><code>0</code> - ����覃 �竄� ��痰牀���;</li>
        <li><code>1</code> - 皰�讓� ━�;</li>
        <li><code>2</code> - 皰�讓� �竄�.</li>
      </ul>
    </li>
  </ul>
#end
function GetTuneNameEx(sKey: string, lObj: word): string; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �襪�モ ���讌���皀�� ���；��牀������ 甌�♂キ┘ ├ ���讌���皀�赱���� � �������� ��痰牀���.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sMsg</code> - ���讌���皀�赱��� 甌�♂キ┘;</li>
    <li><code>sKey</code> - ��鈑 ��痰牀���.</li>
  </ul>
#end
function ShowTune(sMsg: string, sKey: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    蹍▲瑙モ 痺薀痰≪モ �� ��痰牀��� �� 礫�������� ��鈑�.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function ExistTune(sKey: string): boolean; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ 皋� ��痰牀��� �� ��鈑�.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function GetTuneType(sKey: string): word; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� string, �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function sGetTune(sKey: string): string; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� boolean, �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function boGetTune(sKey: string): boolean; external 'G_Tune.dll';
#doc
  </brief>
  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� char, �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function cGetTune(sKey: string): char; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� word, �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function wGetTune(sKey: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� byte, �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function bGetTune(sKey: string): byte; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� LongInt, �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function lGetTune(sKey: string): LongInt; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� date, �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function dGetTune(sKey: string): date; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� time, �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function tGetTune(sKey: string): time; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� double, �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function doGetTune(sKey: string): double; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� comp, �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���.</li>
  </ul>
#end
function coGetTune(sKey: string): comp; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� string, � 礫����┘� ��鈑�, 筥����� � ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥���� ���讌���皀��;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function sGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): string; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� boolean, � 礫����┘� ��鈑�, 筥����� � ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥���� ���讌���皀��;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function boGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): boolean; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� char, � 礫����┘� ��鈑�, 筥����� � ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥���� ���讌���皀��;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function cGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): char; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� word, � 礫����┘� ��鈑�, 筥����� � ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥���� ���讌���皀��;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function wGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� byte, � 礫����┘� ��鈑�, 筥����� � ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥���� ���讌���皀��;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function bGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): byte; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� LongInt, � 礫����┘� ��鈑�, 筥����� � ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥���� ���讌���皀��;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function lGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): LongInt; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� date, � 礫����┘� ��鈑�, 筥����� � ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥���� ���讌���皀��;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function dGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): date; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� time, � 礫����┘� ��鈑�, 筥����� � ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥���� ���讌���皀��;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function tGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): time; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� double, � 礫����┘� ��鈑�, 筥����� � ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥���� ���讌���皀��;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function doGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): double; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ Л�腑�┘ ��痰牀��� � 皋��� comp, � 礫����┘� ��鈑�, 筥����� � ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥���� ���讌���皀��;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function coGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): comp; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� string, � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>sValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function sSetTune(sKey: string, sValue: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� boolean, � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>boValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function boSetTune(sKey: string, boValue: boolean): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� char, � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>cValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function cSetTune(sKey: string, cValue: char): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� word, � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>wValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function wSetTune(sKey: string, wValue: word): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� word, � ��� Ε string, � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>wValue</code> - ����瘠��ガ�� Л�腑�┘;</li>
    <li><code>sValue</code> - ������┘ Л�腑���.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function wSetTune2(sKey: string, wValue: word, sValue: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� Longint, � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function lSetTune(sKey: string, lValue: LongInt): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� Longint, � ��� Ε string, � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lValue</code> - ����瘠��ガ�� Л�腑�┘;</li>
    <li><code>sValue</code> - ������┘ Л�腑���.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function lSetTune2(sKey: string, lValue: LongInt, sValue: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� date, � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>dValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function dSetTune(sKey: string, dValue: date): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� time, � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>tValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function tSetTune(sKey: string, tValue: time): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� double, � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>doValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function doSetTune(sKey: string, doValue: double): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� comp, � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>coValue</code> - ����瘠��ガ�� Л�腑�┘;</li>
    <li><code>sValue</code> - ������┘ Л�腑���.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function coSetTune(sKey: string, coValue: comp, sValue: string): word; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� string, � ��痰牀��� �� ��鈑�, c 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>sValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function sSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, sValue: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� boolean, � ��痰牀��� �� ��鈑�, c 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>boValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function boSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, boValue: boolean): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� char, � ��痰牀��� �� ��鈑�, c 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>cValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function cSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, cValue: char): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� word, � ��痰牀��� �� ��鈑�, c 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>wValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function wSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, wValue: word): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� word � string, � ��痰牀��� �� ��鈑�, c 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>wValue</code> - ����瘠��ガ�� Л�腑�┘;</li>
    <li><code>sValue</code> - ������┘ Л�腑���.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function wSetTuneEx2(sKey: string, lObj: LongInt, cUser: comp, wValue: word, sValue: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� Longint, � ��痰牀��� �� ��鈑�, c 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>lValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function lSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, lValue: LongInt): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� Longint � String, � ��痰牀��� �� ��鈑�, c 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>lValue</code> - ����瘠��ガ�� Л�腑�┘;</li>
    <li><code>sValue</code> - ������┘ Л�腑���.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function lSetTuneEx2(sKey: string, lObj: LongInt, cUser: comp, lValue: LongInt, sValue: string) : word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� date, � ��痰牀��� �� ��鈑�, c 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>dValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function dSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, dValue: date): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� time, � ��痰牀��� �� ��鈑�, c 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>tValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function tSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, tValue: time): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� double, � ��痰牀��� �� ��鈑�, c 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>doValue</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function doSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, doValue: double): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � 皋��� comp, � ��痰牀��� �� ��鈑�, c 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>coValue</code> - ����瘠��ガ�� Л�腑�┘;</li>
    <li><code>sValue</code> - ������┘ Л�腑���.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function coSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, coValue: comp, sValue: string): word; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � ��痰牀��� �� ��鈑�, か� 皀�竕ィ� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>Value</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function SetTune(sKey: string, var Value: anytype): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �痰���→� Л�腑��� � ��痰牀��� �� ��鈑�, � 礫����┘� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��;</li>
    <li><code>Value</code> - ����瘠��ガ�� Л�腑�┘.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘</h3>
  <p>
    ��� �荐！�.
  </p>
#end
function SetTuneEx(sKey: string, lObj: LongInt, cUser: comp, var Value: anytype): word; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    ��Б����モ ����竡 ��瓷� ���� ��痰牀��� か� 礫�������� ���讌���皀�� � 筥�����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function GetTuneFullRgh(sKey: string, lObj: LongInt, cUser: comp): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ ∇ガキ�襯 �����. �� 爛���キゃモ瘴 � �甎��讌������.
  </p>
#end
function GetTuneTmpRgh(cNRec: comp, lObj: LongInt, cUser: comp): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �� 爛���キゃモ瘴 � �甎��讌������. ��痰ガ��� 粃��罔� �� ��｀皀 � ��痰牀�����
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>sKey</code> - ��鈑 �瓷���� ��痰牀���;</li>
    <li><code>lObj</code> - 筥����;</li>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function PostTuneEx(sKey: string, lObj: LongInt, cUser: comp): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    ��Б����モ 痰�矣� ��甄イ�ォ ��ム�罔� ��� ��痰牀�����.
  </p>
#end
function LastTuneStatus: word; external 'G_Tune.dll';
function StartProtokol(sIntrName: string, sIntrComment: string): boolean; external 'G_Tune.dll';
function StopProtokol: boolean; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    ���鈑�モ 瓠�� 痰�皋痰┴� �� ��痰牀����.
  </p>
#end
Procedure StartLogTunes; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    �覈�鈑�モ 瓠�� 痰�皋痰┴� �� ��痰牀����.
  </p>
#end
Procedure StopLogTunes; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    ��Б����モ �筥� ��爛ぅ�キ���� ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function GetUserOffice(cUser: comp): word; external 'G_Tune.dll';    // �粐�� ���讌���皀��
#doc
  </brief>

  <p>
    ��Б����モ ���ム 皀�竕ィ� �筥��.
  </p>
#end
function GetCurrOffice: word; external 'G_Tune.dll'; // 皀�竕┤ �筥�
#doc
  </brief>

  <p>
    ��Б����モ ���ム 皀�竕ィ� 筥�����.
  </p>
#end
function GetCurrFilial: word; external 'G_Tune.dll'; // 皀�竕┤ 筥����
#doc
  </brief>

  <p>
    �痰���※碎 筥���� か� ��痰牀オ.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>wFilial</code> - ���ム 筥�����.</li>
  </ul>
#end
function SetTuneFilial(wFilial: word): word; external 'G_Tune.dll'; // 竅����※碎 筥���� か� ��痰牀オ
#doc
  </brief>

  <p>
    ��Б����モ ���ム 皀�竕ィ� �筥�� � 筥�����.
  </p>
#end
function GetOfficeFilial: longInt; external 'G_Tune.dll'; // 皀�竕┤ �筥� + 筥����
#doc
  </brief>

  <p>
    ��Б����モ �筥� � 筥���� ��爛ぅ�キ���� ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>cUser</code> - ���讌���皀��.</li>
  </ul>
#end
function UserOfficeFilial(cUser: comp): longInt; external 'G_Tune.dll'; // �筥� + 皀�竕┤ 筥���� ���讌���皀��
#doc
  </brief>

  <p>
    ��Б����モ �筥� � 筥���� ��爛ぅ�キ���� ���讌���皀��.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>lUserOffice</code> - Л�腑�┘ ���� x$Users.xu$UserOffice.</li>
  </ul>
#end
function UserOfficeFilialEx(lUserOffice : longInt): longInt; external 'G_Tune.dll'; // �筥� + 皀�竕┤ 筥���� ���讌���皀��
#doc
  </brief>

  <p>
    ��Б����モ ���ム 筥����� �� ィ� ID.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>cFilial</code> - ID 筥�����.</li>
  </ul>
#end
function FilialNo(cFilial: comp): word; external 'G_Tune.dll'; // ���竍�碎 ���ム 筥����� �� ィ� ID
#doc
  </brief>

  <p>
    �〓��腮��モ 礫�����覃 �筥� � 筥���� � �き� ����.
  </p>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>wOffice</code> - �筥�;</li>
    <li><code>wFilial</code> - 筥����.</li>
  </ul>
#end
function OfficeFilialTune(wOffice: word, wFilial: word): longInt; external 'G_Tune.dll';    // �筥� � 筥���� 瓣���腮��鈞瘴 � �き� ����

#doc
  </brief>

  <p>
    ｯ爛ぅ�錺� 竅����←キ �� 皀�竕┤ 筥���� � �����筥����讚�� ��.
  </p>
#end
function isModifyDataFilial: boolean; external 'G_Tune.dll'; // � �����筥����讚�� �� 竅����←キ �� 皀�竕┤ 筥����
#doc
  </brief>

  <p>
    ｯ爛ぅ�錺� →�鈑キ� �� 筥����讚�痰�.
  </p>
#end
function ExistFilial: boolean; external 'G_Tune.dll'; // ���鈑キ� �� 筥����讚�痰�
#doc
  </brief>

  <p>
    ｯ爛ぅ�錺� →�鈑キ �� Protect.
  </p>
#end
function isProtection: boolean; external 'G_Tune.dll'; // ���鈑キ �� �牀皀��

procedure TuneDefCacheTurnOn; external 'G_Tune.dll';
procedure TuneDefCacheTurnOff; external 'G_Tune.dll';
function  GetPostUpdateTuneEnabled(sKey: string): boolean; external 'G_Tune.dll';
procedure SetPostUpdateTuneEnabled(sKey: string, Flag : boolean); external 'G_Tune.dll';

function  TunesInit                                      : boolean;  external 'G_Tune.dll';
function  isTunesInit                                    : boolean;  external 'G_Tune.dll';
function  TunesDone                                      : boolean;  external 'G_Tune.dll';

//------------------------------------------------------------------------------
